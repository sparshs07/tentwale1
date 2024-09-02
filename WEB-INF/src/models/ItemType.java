package models;

import java.sql.*;
import java.util.ArrayList;

public class ItemType {
    private Integer itemTypeId;
    private String name;

    //Constructors

    public ItemType(Integer itemTypeId){
        this.itemTypeId=itemTypeId;
    }

     public ItemType(Integer itemTypeId, String name){
        this.itemTypeId=itemTypeId;
        this.name=name;
    }
    //Other Methods

    public static ArrayList<ItemType> getItemType(){
        ArrayList<ItemType> itemTypes=new ArrayList<>();
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tentwaledb?user=root&password=1234");
            String query="select * from item_types";
            PreparedStatement ps=con.prepareStatement(query);
            ResultSet rs= ps.executeQuery();
            while(rs.next()){
                itemTypes.add(new ItemType(rs.getInt(1),rs.getString(2)));
            }
            con.close();
        }catch(SQLException|ClassNotFoundException e){
            e.printStackTrace();
        }
        return itemTypes;
    }

    //Getter/Setter
    public Integer getItemTypeId() {
        return itemTypeId;
    }

    public void setItemTypeId(Integer itemTypeId) {
        this.itemTypeId = itemTypeId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

   

    
}
