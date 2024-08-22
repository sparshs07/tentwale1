package models;

import java.sql.*;

public class Item {
    // Properties
    private Integer itemId;
    private String name;
    private String description;
    private ItemType itemType;

    

    // Constructors
    public Item(){

    }

    public Item(Integer itemId,String name,String description){
        this.itemId=itemId;
        this.name=name;
        this.description=description;
    }

    // Getter/Setters

    public void setItemId(Integer itemId){
        this.itemId=itemId;
    }
    public Integer getItemId(){
        return itemId;
    }

    public void setName(String name){
        this.name=name;
    }
    public String getName(){
        return name;
    }

    public void setDescription(String description){
        this.description=description;
    }
    public String getDescription(){
        return description;
    }

    public ItemType getItemType() {
        return itemType;
    }

    public void setItemType(ItemType itemType) {
        this.itemType = itemType;
    }

}
