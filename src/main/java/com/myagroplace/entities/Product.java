package com.myagroplace.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity

public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(length = 10 , name = "p_Id")
    private int productId;
    
    @Column(length = 100 , name = "p_Name")
    private String productName;
    
    @Column(length = 500 , name = "p_Desc")
    private String productDescription;
    
    @Column(length = 10 , name = "p_Price")
    private int productPrice;
    
    @Column(length = 10, name = "p_Quantity")
    private int productQuantity;
    
    private String productPhoto;
    
    @ManyToOne
    private Product_Category category;

    public Product() {
    }

    public Product(int productId, String productName, String productDescription, int productPrice, int productQuantity, String productPhoto) {
        this.productId = productId;
        this.productName = productName;
        this.productDescription = productDescription;
        this.productPrice = productPrice;
        this.productQuantity = productQuantity;
        this.productPhoto = productPhoto;
    }

    public Product(String productName, String productDescription, int productPrice, int productQuantity, String productPhoto, Product_Category category) {
        this.productName = productName;
        this.productDescription = productDescription;
        this.productPrice = productPrice;
        this.productQuantity = productQuantity;
        this.productPhoto = productPhoto;
        this.category = category;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }
    
     public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public int getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(int productPrice) {
        this.productPrice = productPrice;
    }

    public int getProductQuantity() {
        return productQuantity;
    }

    public void setProductQuantity(int productQuantity) {
        this.productQuantity = productQuantity;
    }

    public String getProductPhoto() {
        return productPhoto;
    }

    public void setProductPhoto(String productPhoto) {
        this.productPhoto = productPhoto;
    }

    public Product_Category getCategory() {
        return category;
    }

    public void setCategory(Product_Category category) {
        this.category = category;
    }
    

    @Override
    public String toString() {
        return "Product{" + "productId=" + productId + ", productName=" + productName + ", productDescription=" + productDescription + ", productPrice=" + productPrice + ", productQuantity=" + productQuantity + ", productPhoto=" + productPhoto + '}';
    }
    
    
    
    
    
}