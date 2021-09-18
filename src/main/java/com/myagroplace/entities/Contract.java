
package com.myagroplace.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Contract {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(length = 10, name = "contract_id")
    private int contractId;
    
    @Column(length = 100 , name = "crop")
    private String crop;
    
    @Column(length = 100 , name = "land")
    private String land;
    
    @Column(length = 100 , name = "cropRate")
    private String cropRate;
    
    @Column(length = 500 , name = "contract_description")
    private String contractDescription;
    
    @Column(length = 10 , name = "contractor_mobNo")
    private String contractor_mobNo;
    
    @Column(length = 100 , name = "contractor_Name")
    private String contractor_Name;
    
    @Column(length = 100 , name = "contractor_Address")
    private String contractor_Address;

    public Contract(String crop, String land, String cropRate, String contractDescription, String contractor_mobNo, String contractor_Name, String contractor_Address) {
        this.crop = crop;
        this.land = land;
        this.cropRate = cropRate;
        this.contractDescription = contractDescription;
        this.contractor_mobNo = contractor_mobNo;
        this.contractor_Name = contractor_Name;
        this.contractor_Address = contractor_Address;
    }

    public Contract() {
    }

    public int getContractId() {
        return contractId;
    }

    public void setContractId(int contractId) {
        this.contractId = contractId;
    }

    public String getCrop() {
        return crop;
    }

    public void setCrop(String crop) {
        this.crop = crop;
    }

    public String getLand() {
        return land;
    }

    public void setLand(String land) {
        this.land = land;
    }

    public String getCropRate() {
        return cropRate;
    }

    public void setCropRate(String cropRate) {
        this.cropRate = cropRate;
    }

    public String getContractDescription() {
        return contractDescription;
    }

    public void setContractDescription(String contractDescription) {
        this.contractDescription = contractDescription;
    }

    public String getContractor_mobNo() {
        return contractor_mobNo;
    }

    public void setContractor_mobNo(String contractor_mobNo) {
        this.contractor_mobNo = contractor_mobNo;
    }

    public String getContractor_Name() {
        return contractor_Name;
    }

    public void setContractor_Name(String contractor_Name) {
        this.contractor_Name = contractor_Name;
    }

    public String getContractor_Address() {
        return contractor_Address;
    }

    public void setContractor_Address(String address) {
        this.contractor_Address = contractor_Address;
    }

    @Override
    public String toString() {
        return "contract{" + "contractId=" + contractId + ", crop=" + crop + ", land=" + land + ", cropRate=" + cropRate + ", contractDescription=" + contractDescription + ", contractor_mobNo=" + contractor_mobNo + ", contractor_Name=" + contractor_Name + ", contractor_Address=" + contractor_Address + '}';
    }
    
    
}
