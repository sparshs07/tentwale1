package models;

import java.sql.*;

public class ItemType {
    private Integer itemTypeId;
    private Integer name;

    //Constructors
     public ItemType(){

    }
    //Other Methods

    //Getter/Setter
    public Integer getItemTypeId() {
        return itemTypeId;
    }

    public void setItemTypeId(Integer itemTypeId) {
        this.itemTypeId = itemTypeId;
    }

    public Integer getName() {
        return name;
    }

    public void setName(Integer name) {
        this.name = name;
    }

   

    
}
