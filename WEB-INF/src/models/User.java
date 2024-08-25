package models;

import java.sql.*;

import javax.servlet.ServletException;

import org.jasypt.util.password.StrongPasswordEncryptor;

public class User {
   static StrongPasswordEncryptor spe=new StrongPasswordEncryptor();

    //Properties
    private Integer userId;
    private String name;
    private String email;
    private String password;
    private String pic;
    private String phone;
    private String otp;
    private Integer trustPoints;
    private Boolean userType;
    private Membership membership;
    private Status status;
    private Pincode pincode;

     //Constructors
    public User(){

    }

    public User(String name,String email,String password,String phone,String otp){
        this.name=name;
        this.email=email;
        this.password=password;
        this.phone=phone;
        this.otp=otp;
    }

    
    //Other Methods

    public static boolean signinUser(String email,String password){
        boolean flag=false;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://local:3306/tentwaledb?user=root&password=1234");
            String query="select email,password from users where email=? and password=?";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,email);
            ps.setString(2,password);
            ResultSet rs=ps.executeQuery();
        }catch(ClassNotFoundException|SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    public static boolean checkPhone(String phone){
        boolean flag=false;

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tentwaledb?user=root&password=1234");
            String query="select phone from users where phone=?";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,phone);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                flag=true;
            }
            con.close();
        }catch(ClassNotFoundException|SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    public  boolean signupUser(){
        boolean flag=false;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tentwaledb?user=root&password=1234");
            String query="insert into users (name,email,password,phone,otp) value (?,?,?,?,?)";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,name);
            ps.setString(2,email);
            ps.setString(3,spe.encryptPassword(password));
            ps.setString(4,phone);
            ps.setString(5,otp);

           int rs= ps.executeUpdate();
           if(rs==1){
            flag=true;
           }
            con.close();
        }catch(ClassNotFoundException|SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    public static boolean checkEmail(String email){
        boolean flag=false;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tentwaledb?user=root&password=1234");
            String query="select email from users where email=?";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,email);
            ResultSet rs=ps.executeQuery();

            if(rs.next()){
                flag=true;
            }
            con.close();

        }catch(ClassNotFoundException|SQLException e){
            e.printStackTrace();
        }
        
        return flag;
    }

    public static void setEmailOTP(String name,String email,String otp){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tentwaledb?user=root&password=1234");
            String query="insert into users (name,email,otp) value (?,?,?)";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,name);
            ps.setString(2,email);
            ps.setString(3,otp);
            
            ps.executeUpdate();
            con.close();
        }catch(ClassNotFoundException|SQLException e){
            e.printStackTrace();
        }
    }

    //Getter/Setters

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getOtp() {
        return otp;
    }

    public void setOtp(String otp) {
        this.otp = otp;
    }

    public Integer getTrustPoints() {
        return trustPoints;
    }

    public void setTrustPoints(Integer trustPoints) {
        this.trustPoints = trustPoints;
    }

    public Boolean getUserType() {
        return userType;
    }

    public void setUserType(Boolean userType) {
        this.userType = userType;
    }

    public Membership getMembership() {
        return membership;
    }

    public void setMembership(Membership membership) {
        this.membership = membership;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public Pincode getPincode() {
        return pincode;
    }

    public void setPincode(Pincode pincode) {
        this.pincode = pincode;
    }

   
    
}
