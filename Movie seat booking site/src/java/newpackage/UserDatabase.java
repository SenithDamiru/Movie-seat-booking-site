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
            String query = "insert into users(username, email, password,first_name, last_name) values(?,?,?,?,?)";
            
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
    
    //use login
    public users logUser(String uname, String pass){
        users user = null;
        try{
            String query = "select * from users where username=? and password=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, uname);
            pst.setString(2, pass);
            
            ResultSet rs =pst.executeQuery();
            if(rs.next()){
                user = new users();
                user.setUser_id(rs.getInt("user_id"));
                user.setUsername("username");
                user.setEmail("email");
                user.setPassword("password");
                user.setFirstName("first_name");
                user.setLastName("last_name");
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        
        return user;
    }
}
