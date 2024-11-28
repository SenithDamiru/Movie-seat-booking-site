package newpackage;




public class users {
    private int user_id;
    private String username;
    private String password;
    private String email;
    private String first_name;
    private String last_name;



    // Default constructor
    public users() {}

    
        // Constructor 
      public users( int user_id, String username, String password, String email, String first_name, String last_name) { 
        this.user_id = user_id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.first_name = first_name;
        this.last_name = last_name;
    }
      
    public users( String username, String password, String email, String first_name, String last_name) { 
        this.username = username;
        this.password = password;
        this.email = email;
        this.first_name = first_name;
        this.last_name = last_name;
    }
    
    public users(String password, String email, String first_name, String last_name) { 
        
        this.password = password;
        this.email = email;
        this.first_name = first_name;
        this.last_name = last_name;
    }
 
     
    public users( String email, String first_name, String last_name) { 
        
      
        this.email = email;
        this.first_name = first_name;
        this.last_name = last_name;
    }
    
    
     public users(  String first_name, String last_name) { 
  
        this.first_name = first_name;
        this.last_name = last_name;
    }
    
    // Getters
   
      public int getUser_id() {
        return user_id;
    }
      
    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getEmail() {
        return email;
    }

    public String getFirstName() {
        return first_name;
    }

    public String getLastName() {
        return last_name;
    }

    // Setters
       public void setUser_id(int user_id) {
        this.user_id = user_id;
    }
       

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setFirstName(String first_name) {
        this.first_name = first_name;
    }

    public void setLastName(String last_name) {
        this.last_name = last_name;
    }
}
