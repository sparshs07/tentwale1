package models;

import java.sql.*;

import java.util.ArrayList;

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

    public Item(Integer itemId,String name,String description,ItemType itemType){
        this.itemId=itemId;
        this.name=name;
        this.description=description;
        this.itemType=itemType;
    }

    //Other Methods

    public static String getDescription(String name){
        String description =null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tentwaledb?user=root&password=1234");
            String query="select description from items where name=?";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1, name);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                description=rs.getString("description");
            }
        }catch(ClassNotFoundException|SQLException e){
            e.printStackTrace();
        }
        return description;
    }

    public static ArrayList<Item> getItems(){
        ArrayList<Item>items =new ArrayList<>();
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tentwaledb?user=root&password=1234");
            String query="select * from items";
            PreparedStatement ps=con.prepareStatement(query);
            ResultSet rs=ps.executeQuery();

            while(rs.next()){
                items.add(new Item(rs.getInt(1),rs.getString(2),rs.getString(3),new ItemType(rs.getInt(4))));
            }

        }catch(SQLException|ClassNotFoundException e){
            e.printStackTrace();
        }
        return items;
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
