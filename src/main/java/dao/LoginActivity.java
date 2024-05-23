package dao;

public class LoginActivity {
    private int id;
    private String userId;
    private String email;
    private String name;
    private String loginTimestamp;

    public LoginActivity(int id, String userId, String email, String name, String loginTimestamp) {
        this.id = id;
        this.userId = userId;
        this.email = email;
        this.name = name;
        this.loginTimestamp = loginTimestamp;
    }

    // Getters and setters for all fields

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLoginTimestamp() {
        return loginTimestamp;
    }

    public void setLoginTimestamp(String loginTimestamp) {
        this.loginTimestamp = loginTimestamp;
    }

    // Optional: Override toString() method for debugging or logging purposes
    
}

