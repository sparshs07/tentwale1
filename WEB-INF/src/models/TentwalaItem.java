package models;

import java.sql.*;
import java.util.ArrayList;

public class TentwalaItem {
    //Properties
    private Integer tentwalaItemId;
    private Item item;
    private Integer totalQuantity;
    private Integer unitPrice;
    private User userTentwale;
    private String tentwalaItemPic;

     

    //Constructors
    public TentwalaItem(){

    }

    public TentwalaItem(Integer tentwalaItemId,Item item,Integer totalQuantity,Integer unitPrice,String tentwalaItemPic){
        this.tentwalaItemId=tentwalaItemId;
        this.item=item;
        this.totalQuantity=totalQuantity;
        this.unitPrice=unitPrice;
        this.tentwalaItemPic=tentwalaItemPic;
    }

    //Other Methods

    public static ArrayList<TentwalaItem> getItems(Integer userId){
        ArrayList<TentwalaItem> tentwalaItem=new ArrayList<>();

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tentwaledb?user=root&password=1234");
            String query=" select * from tentwala_items as twi inner join items as it where user_tentwale_id=? and twi.item_id=it.item_id";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setInt(1,userId);
            ResultSet rs=ps.executeQuery();

            while(rs.next()){
                tentwalaItem.add(new TentwalaItem(rs.getInt("tentwala_item_id"),new Item(rs.getInt("item_id"),rs.getString("name"),rs.getString("description")),rs.getInt("total_quantity"),rs.getInt("unit_price"),rs.getString("tentwala_item_pic")));
            }
        }catch(ClassNotFoundException|SQLException e){
            e.printStackTrace();
        }

        return tentwalaItem;
    }

    public static boolean addItem(Integer itemId,Integer totalQuantity,Integer unitPrice,Integer userId){
        boolean flag=false;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tentwaledb?user=root&password=1234");
            String query="insert into tentwala_items (item_id,total_quantity,unit_price,user_tentwale_id) value (?,?,?,?)";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setInt(1, itemId);
            ps.setInt(2, totalQuantity);
            ps.setInt(3, unitPrice);
            ps.setInt(4, userId);

            int x=ps.executeUpdate();
            if(x==1){
                flag=true;
            }
            con.close();
        }catch(SQLException|ClassNotFoundException e){
            e.printStackTrace();
        }
        return flag;
    }

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
