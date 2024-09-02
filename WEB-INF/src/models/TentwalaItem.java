package models;

import java.sql.*;

public class TentwalaItem {
    //Properties
    private Integer tentwalaItemId;
    private Integer totalQuantity;
    private Integer unitPrice;
    private Item item;
    private User userTentwale;
    private String tentwalaItemPic;

     

    //Constructors
    public TentwalaItem(){

    }

    //Other Methods

    //Getter/Setter


    public Integer getTentwalaItemId() {
        return tentwalaItemId;
    }
    public void setTentwalaItemId(Integer tentwalaItemId) {
        this.tentwalaItemId = tentwalaItemId;
    }
    public Integer getTotalQuantity() {
        return totalQuantity;
    }
    public void setTotalQuantity(Integer totalQuantity) {
        this.totalQuantity = totalQuantity;
    }
    public Integer getUnitPrice() {
        return unitPrice;
    }
    public void setUnitPrice(Integer unitPrice) {
        this.unitPrice = unitPrice;
    }
    public Item getItem() {
        return item;
    }
    public void setItem(Item item) {
        this.item = item;
    }
    public User getUserTentwale() {
        return userTentwale;
    }
    public void setUserTentwale(User userTentwale) {
        this.userTentwale = userTentwale;
    }

    public String getTentwalaItemPic() {
        return tentwalaItemPic;
    }

    public void setTentwalaItemPic(String tentwalaItemPic) {
        this.tentwalaItemPic = tentwalaItemPic;
    }

}
