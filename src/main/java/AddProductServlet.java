import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.*;

@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/blackmarket";
    private static final String DB_USER = "seller_user";
    private static final String DB_PASSWORD = "seller_user@";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Load MySQL JDBC Driver
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new ServletException("MySQL JDBC Driver not found", e);
        }

        // Validate user session
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("user_id") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        // Retrieve form parameters
        String user_id = session.getAttribute("user_id").toString();
        String modelNumber = request.getParameter("model_number");
        String productName = request.getParameter("product_name");
        String category = request.getParameter("category");

        // Validate input parameters
        if (validateParameters(modelNumber, productName, category)) {
            request.setAttribute("error", "Missing or invalid product information");
            request.getRequestDispatcher("seller_page.jsp#add_product").forward(request, response);
            return;
        }

        // Handle file upload
        Part filePart = request.getPart("product_image");
        if (filePart == null || filePart.getSize() == 0) {
            request.setAttribute("error", "Product image is required");
            request.getRequestDispatcher("seller_page.jsp#add_product").forward(request, response);
            return;
        }

        // Prepare image file
        String fileName = prepareImageFile(filePart, modelNumber);

        Connection conn = null;
        try {
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            conn.setAutoCommit(false);  // Start transaction

            // Get category ID
            int categoryId = getCategoryId(conn, category);

            // Get seller ID
            int sellerId = getSellerId(conn, user_id);

            // Prepare image for database
            try (FileInputStream fis = new FileInputStream(new File(fileName))) {
                // Insert product
                String insertQuery = "INSERT INTO product " +
                        "(model_number, product_name, category_id, seller_id,  image_blob) " +
                        "VALUES (?, ?, ?, ?, ?, ?, ?)";

                try (PreparedStatement stmt = conn.prepareStatement(insertQuery)) {
                    stmt.setString(1, modelNumber);
                    stmt.setString(2, productName);
                    stmt.setInt(3, categoryId);
                    stmt.setInt(4, sellerId);

                    stmt.setBlob(5, fis, new File(fileName).length());

                    stmt.executeUpdate();
                }
            }

            conn.commit();  // Commit transaction
            response.sendRedirect("seller_page.jsp?success=true");






        } catch (SQLException e) {
            // Rollback transaction
            if (conn != null) {
                try {
                    conn.rollback();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }

            // Log and forward error
            e.printStackTrace();
            request.setAttribute("error", "Database error: " + e.getMessage());
            request.getRequestDispatcher("seller_page.jsp#add_product").forward(request, response);
        } finally {
            // Close connection
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
    // Validate input parameters
    private boolean validateParameters(String... params) {
        for (String param : params) {
            if (param == null || param.trim().isEmpty()) {
                return true;  // validation failed
            }
        }
        return false;  // validation passed
    }

    // Prepare image file
    private String prepareImageFile(Part filePart, String modelNumber) throws IOException {
        String uploadPath = getServletContext().getRealPath("") + File.separator + "product_images";
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdir();

        String fileName = modelNumber + "_" + getSubmittedFileName(filePart);
        String fullPath = uploadPath + File.separator + fileName;
        filePart.write(fullPath);

        return fullPath;
    }

    // Get category ID
    private int getCategoryId(Connection conn, String category) throws SQLException {
        String categoryQuery = "SELECT category_id FROM category WHERE category_name = ?";
        try (PreparedStatement stmt = conn.prepareStatement(categoryQuery)) {
            stmt.setString(1, category);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt("category_id");
                }
                throw new SQLException("Invalid category");
            }
        }
    }

    // Get seller ID
    private int getSellerId(Connection conn, String userId) throws SQLException {
        String sellerQuery = "SELECT seller_id FROM seller WHERE user_id = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sellerQuery)) {
            stmt.setString(1, userId);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt("seller_id");
                }
                throw new SQLException("Invalid seller");
            }
        }
    }

    // Extract filename from Part
    private String getSubmittedFileName(Part part) {
        for (String cd : part.getHeader("content-disposition").split(";")) {
            if (cd.trim().startsWith("filename")) {
                return cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }
}
