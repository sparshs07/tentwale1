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

    public static Boolean createRecord(Integer userId, Integer userTentwalaId) {
        Boolean flag = false;
    
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tentwaledb?user=root&password=1234");
    
            // Check for duplicate record
            String checkDuplicateQuery = "SELECT COUNT(*) FROM invoice WHERE user_id = ? AND user_tentwale_id = ?";
            PreparedStatement checkDuplicateStatement = con.prepareStatement(checkDuplicateQuery);
            checkDuplicateStatement.setInt(1, userId);
            checkDuplicateStatement.setInt(2, userTentwalaId);
    
            ResultSet resultSet = checkDuplicateStatement.executeQuery();
            resultSet.next();
            int duplicateCount = resultSet.getInt(1);
    
            if (duplicateCount == 0) {
                // No duplicate found, proceed with the insertion
                String insertQuery = "INSERT INTO invoice (user_id, user_tentwale_id) VALUES (?, ?)";
                PreparedStatement ps = con.prepareStatement(insertQuery);
                ps.setInt(1, userId);
                ps.setInt(2, userTentwalaId);
    
                int x = ps.executeUpdate();
                if (x == 1) {
                    flag = true;
                }
            } 
    
            con.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    
        return flag;
    }

    public static Integer getInvoiceId(Integer userId,Integer userTentwaleId){
        Integer invoiceId=-1;

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tentwaledb?user=root&password=1234");
            String query="select invoice_id from invoice where user_id=? and user_tentwale_id=?";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setInt(1,userId);
            ps.setInt(2,userTentwaleId);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                invoiceId=rs.getInt("invoice_id");
            }
            con.close();
        }catch(SQLException|ClassNotFoundException e){
            e.printStackTrace();
        }
        return invoiceId;
    }

    //Getter-Setter
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
