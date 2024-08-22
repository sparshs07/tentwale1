package models;

import java.sql.*;
import java.util.Date;

public class Invoice {
    private Integer invoiceId;
    private  User user;
    private User userTentwale;
    private Date bookedOn;
    private Integer bookedDays;

    //Constructors
     public Invoice(){

    }
   
    //Other Methods


    public Integer getInvoiceId() {
        return invoiceId;
    }
    
    public void setInvoiceId(Integer invoiceId) {
        this.invoiceId = invoiceId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public User getUserTentwale() {
        return userTentwale;
    }

    public void setUserTentwale(User userTentwale) {
        this.userTentwale = userTentwale;
    }

    public Date getBookedOn() {
        return bookedOn;
    }

    public void setBookedOn(Date bookedOn) {
        this.bookedOn = bookedOn;
    }

    public Integer getBookedDays() {
        return bookedDays;
    }

    public void setBookedDays(Integer bookedDays) {
        this.bookedDays = bookedDays;
    }
   
}
