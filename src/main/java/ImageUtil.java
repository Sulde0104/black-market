import java.io.InputStream;
import java.sql.Blob;
import java.util.Base64;

public class ImageUtil {
    public static String convertBlobToBase64(Blob blob) throws Exception {
        InputStream inputStream = blob.getBinaryStream();
        byte[] imageBytes = inputStream.readAllBytes();
        return Base64.getEncoder().encodeToString(imageBytes);
    }
}
