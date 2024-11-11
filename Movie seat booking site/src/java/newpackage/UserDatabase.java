package newpackage;


import java.sql.*;
public class UserDatabase {
    Connection con;
    
    public UserDatabase(Connection con){
        this.con =con;
    }

    public UserDatabase() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    public boolean saveUser(users user){
        boolean set = false;
        try{
            String query = "insert into users(username, password, email, first_name, last_name) values(?,?,?,?,?,?)";
            
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, user.getUsername());
            pt.setString(2, user.getPassword());
            pt.setString(3, user.getEmail());
            pt.setString(4, user.getFirstName());
            pt.setString(5, user.getLastName());
            
            pt.executeUpdate();
            set = true;
            
        }catch (Exception e){
            e.printStackTrace();
        }
        return set;
    }
}
