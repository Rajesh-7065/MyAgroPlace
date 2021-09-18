package com.myagroplace.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/* This class is for seller entity i.e, those who will sell their goods through our website*/
@Entity
public class Seller {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(length = 10, name = "seller_id")
    private int sellerId;
    
    @Column(length = 100 , name = "seller_Name")
    private String sellerName;
    
    @Column(length = 10 , name = "seller_Gender")
    private String sellerGender;
    
    @Column(length = 100 , name = "seller_Address")
    private String sellerAddress;
    
    @Column(length = 10 , name = "seller_Pincode")
    private String sellerPincode;
    
    @Column(length = 10 , name = "seller_Mobile_no")
    private String sellerMobile_no;
    
    @Column(length = 100 , name = "seller_Email_Id")
    private String sellerEmail_id;
    
    @Column(length = 100, name = "seller_Username")
    private String sellerUsername;
    
    @Column(length = 100, name = "seller_Password")
    private String sellerPassword;
    
//constructors

    public Seller(int sellerId, String sellerName, String sellerGender, String sellerAddress, String sellerPincode, String sellerMobile_no, String sellerEmail_id, String sellerUsername, String sellerPassword) {
        this.sellerId = sellerId;
        this.sellerName = sellerName;
        this.sellerGender = sellerGender;
        this.sellerAddress = sellerAddress;
        this.sellerPincode = sellerPincode;
        this.sellerMobile_no = sellerMobile_no;
        this.sellerEmail_id = sellerEmail_id;
        this.sellerUsername = sellerUsername;
        this.sellerPassword = sellerPassword;
    }

    public Seller(String sellerName, String sellerGender, String sellerAddress, String sellerPincode, String sellerMobile_no, String sellerEmail_id, String sellerUsername, String sellerPassword) {
        this.sellerName = sellerName;
        this.sellerGender = sellerGender;
        this.sellerAddress = sellerAddress;
        this.sellerPincode = sellerPincode;
        this.sellerMobile_no = sellerMobile_no;
        this.sellerEmail_id = sellerEmail_id;
        this.sellerUsername = sellerUsername;
        this.sellerPassword = sellerPassword;
    }

    public Seller() {
    }

    
//getter and setter    
    
    public int getSellerId() {
        return sellerId;
    }

    public void setSellerId(int sellerId) {
        this.sellerId = sellerId;
    }

    public String getSellerName() {
        return sellerName;
    }

    public void setSellerName(String sellerName) {
        this.sellerName = sellerName;
    }

    public String getSellerGender() {
        return sellerGender;
    }

    public void setSellerGender(String sellerGender) {
        this.sellerGender = sellerGender;
    }

    public String getSellerAddress() {
        return sellerAddress;
    }

    public void setSellerAddress(String sellerAddress) {
        this.sellerAddress = sellerAddress;
    }

    public String getSellerPincode() {
        return sellerPincode;
    }

    public void setSellerPincode(String sellerPincode) {
        this.sellerPincode = sellerPincode;
    }

    public String getSellerMobile_no() {
        return sellerMobile_no;
    }

    public void setSellerMobile_no(String sellerMobile_no) {
        this.sellerMobile_no = sellerMobile_no;
    }

    public String getSellerEmail_id() {
        return sellerEmail_id;
    }

    public void setSellerEmail_id(String sellerEmail_id) {
        this.sellerEmail_id = sellerEmail_id;
    }

    public String getSellerUsername() {
        return sellerUsername;
    }

    public void setSellerUsername(String sellerUsername) {
        this.sellerUsername = sellerUsername;
    }

    public String getSellerPassword() {
        return sellerPassword;
    }

    public void setSellerPassword(String sellerPassword) {
        this.sellerPassword = sellerPassword;
    }

 
//printing refernce    

    @Override
    public String toString() {
        return "Seller{" + "sellerId=" + sellerId + ", sellerName=" + sellerName + ", sellerGender=" + sellerGender + ", sellerAddress=" + sellerAddress + ", sellerPincode=" + sellerPincode + ", sellerMobile_no=" + sellerMobile_no + ", sellerEmail_id=" + sellerEmail_id + ", sellerUsername=" + sellerUsername + ", sellerPassword=" + sellerPassword + '}';
    }
    
}
