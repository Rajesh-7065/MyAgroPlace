package com.myagroplace.entities;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Product_Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(length = 10, name = "c_Id")
    private int categoryId;
    
    @Column(length = 100, name = "c_Title")
    private String categoryTitle;
    @OneToMany(mappedBy = "category")
    private List<Product> products = new ArrayList<>();
    
//constructors

    public Product_Category(int categoryId, String categoryTitle) {
        this.categoryId = categoryId;
        this.categoryTitle = categoryTitle;
    }

    public Product_Category(String categoryTitle, List<Product> products) {
        this.categoryTitle = categoryTitle;
        this.products = products;
    }

    public Product_Category() {
    }
    
    
//getter and setter    

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryTitle() {
        return categoryTitle;
    }

    public void setCategoryTitle(String categoryTitle) {
        this.categoryTitle = categoryTitle;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
    
    
//printing reference    

    @Override
    public String toString() {
        return "Product_Category{" + "categoryId=" + categoryId + ", categoryTitle=" + categoryTitle + '}';
    }
    
}
