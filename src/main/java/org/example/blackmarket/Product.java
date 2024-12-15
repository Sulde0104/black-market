package org.example.blackmarket;

public class Product {
    private String size;
    private String model_number;
    private String color;
    private String product_name;
    private String category;
    private String quantity;
    private double price;

    public Product(String size, String model_number, String color, String product_name, String category, String quantity) {
        this.size = size;
        this.model_number = model_number;
        this.color = color;
        this.product_name = product_name;
        this.category = category;
        this.quantity = quantity;
    }

    public String get_model_number(){
        return model_number;
    }
    public String get_size(){
        return size;
    }
    public String get_product_name(){
        return product_name;
    }
    public String get_category(){
        return category;
    }
    public String get_color(){
        return color;
    }
    public Double get_price(){
        return price;
    }
    public void set_price(Double price){
        this.price = price;
    }
}
