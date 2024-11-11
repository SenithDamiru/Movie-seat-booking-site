package newpackage;




public class users {
    private int userId;
    private String username;
    private String password;
    private String email;
    private String firstName;
    private String lastName;



    // Default constructor
    public users() {}

    
        // Constructor
    public users(int userId, String username, String password, String email, String firstName, String lastName) {
        this.userId = userId;
        this.username = username;
        this.password = password;
        this.email = email;
        this.firstName = firstName;
        this.lastName = lastName;
    }
    
    public users( String username, String password, String email, String firstName, String lastName) { 
        this.username = username;
        this.password = password;
        this.email = email;
        this.firstName = firstName;
        this.lastName = lastName;
    }
    
     public users(  String password, String email, String firstName, String lastName) {
        this.password = password;
        this.email = email;
        this.firstName = firstName;
        this.lastName = lastName;
    }
     
      public users(  String email, String firstName, String lastName) { 
        this.email = email;
        this.firstName = firstName;
        this.lastName = lastName;
    }
      
       public users(   String firstName, String lastName) {
        this.firstName = firstName;
        this.lastName = lastName;
    }
    
    
    // Getters
    public int getUserId() {
        return userId;
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
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    // Setters
    public void setUserId(int userId) {
        this.userId = userId;
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

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
}
