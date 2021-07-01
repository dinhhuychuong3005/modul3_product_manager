package model;

public class Product {
    private int id;
    private String name;
    private int price;
    private String Description;
    private String producer;
    private String image;

    public Product(int id, String name, int price, String description, String producer,String image) {
        this.id = id;
        this.name = name;
        this.price = price;
        Description = description;
        this.producer = producer;
        this.image = image;
    }

    public Product() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
