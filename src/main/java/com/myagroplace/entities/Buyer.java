package com.myagroplace.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Buyer {
    
//attributes of Buyer with 
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
     @Column(length = 10 , name = "b_Id")
    private int buyerId;
    
    @Column(length = 100 , name = "b_Name")
    private String buyerName;
    
    @Column(length = 10 , name = "b_Gender")
    private String buyerGender;
    
    @Column(length = 1500 , name = "b_Address")
    private String buyerAddress;
    
    @Column(length = 10 , name = "b_Pincode")
    private String buyerPincode;
    
    @Column(length = 10 , name = "b_Mobile_no")
    private String buyerMobile_no;
    
    @Column(length = 100 , name = "b_Email_Id")
    private String buyerEmail_Id;
    
    @Column(length = 100 , name = "b_Username")
    private String buyerUsername;
    
    @Column(length = 100 , name = "b_Password")
    private String buyerPassword;
    
    
//constructors    

    public Buyer(int buyerId, String buyerName, String buyerGender, String buyerAddress, String buyerPincode, String buyerMobile_no, String buyerEmail_Id, String buyerUsername, String buyerPassword) {
        this.buyerId = buyerId;
        this.buyerName = buyerName;
        this.buyerGender = buyerGender;
        this.buyerAddress = buyerAddress;
        this.buyerPincode = buyerPincode;
        this.buyerMobile_no = buyerMobile_no;
        this.buyerEmail_Id = buyerEmail_Id;
        this.buyerUsername = buyerUsername;
        this.buyerPassword = buyerPassword;
    }

    public Buyer(String buyerName, String buyerGender, String buyerAddress, String buyerPincode, String buyerMobile_no, String buyerEmail_Id, String buyerUsername, String buyerPassword) {
        this.buyerName = buyerName;
        this.buyerGender = buyerGender;
        this.buyerAddress = buyerAddress;
        this.buyerPincode = buyerPincode;
        this.buyerMobile_no = buyerMobile_no;
        this.buyerEmail_Id = buyerEmail_Id;
        this.buyerUsername = buyerUsername;
        this.buyerPassword = buyerPassword;
    }

    public Buyer() {
    }
    
    
//gettter and setter    

    public int getBuyerId() {
        return buyerId;
    }

    public void setBuyerId(int buyerId) {
        this.buyerId = buyerId;
    }

    public String getBuyerName() {
        return buyerName;
    }

    public void setBuyerName(String buyerName) {
        this.buyerName = buyerName;
    }

    public String getBuyerGender() {
        return buyerGender;
    }

    public void setBuyerGender(String buyerGender) {
        this.buyerGender = buyerGender;
    }

    public String getBuyerAddress() {
        return buyerAddress;
    }

    public void setBuyerAddress(String buyerAddress) {
        this.buyerAddress = buyerAddress;
    }

    public String getBuyerPincode() {
        return buyerPincode;
    }

    public void setBuyerPincode(String buyerPincode) {
        this.buyerPincode = buyerPincode;
    }

    public String getBuyerMobile_no() {
        return buyerMobile_no;
    }

    public void setBuyerMobile_no(String buyerMobile_no) {
        this.buyerMobile_no = buyerMobile_no;
    }

    public String getBuyerEmail_Id() {
        return buyerEmail_Id;
    }

    public void setBuyerEmail_Id(String buyerEmail_Id) {
        this.buyerEmail_Id = buyerEmail_Id;
    }

    public String getBuyerUsername() {
        return buyerUsername;
    }

    public void setBuyerUsername(String buyerUsername) {
        this.buyerUsername = buyerUsername;
    }

    public String getBuyerPassword() {
        return buyerPassword;
    }

    public void setBuyerPassword(String buyerPassword) {
        this.buyerPassword = buyerPassword;
    }
    
    
//printing reference    

    @Override
    public String toString() {
        return "Buyer{" + "buyerId=" + buyerId + ", buyerName=" + buyerName + ", buyerGender=" + buyerGender + ", buyerAddress=" + buyerAddress + ", buyerPincode=" + buyerPincode + ", buyerMobile_no=" + buyerMobile_no + ", buyerEmail_Id=" + buyerEmail_Id + ", buyerUsername=" + buyerUsername + ", buyerPassword=" + buyerPassword + '}';
    }
    
}
