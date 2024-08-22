package models;

import java.sql.*;

public class Pincode {
    // Properties
    private Integer pincodeId;
    private Integer pin;

    // Constructors
    public Pincode(){

    }
    public Pincode(Integer pincodeId,Integer pin){
        this.pincodeId=pincodeId;
        this.pin=pin;
    }

    //Other Methods

    //Getter/Setters
    public Integer getPincodeId() {
        return pincodeId;
    }
    public void setPincodeId(Integer pincodeId) {
        this.pincodeId = pincodeId;
    }
    public Integer getPin() {
        return pin;
    }
    public void setPin(Integer pin) {
        this.pin = pin;
    }

}
