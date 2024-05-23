package dao;

public class CustomerInterest {
    private int id;
    private String customerId;
    private String customerMailId;
    private String propertyId;
    private String propertyName;
    private String customerName;
    private String agentId;
    private String createdAt;

    public CustomerInterest(int id, String customerId, String customerMailId, String propertyId, String propertyName, String customerName, String agentId, String createdAt) {
        this.id = id;
        this.customerId = customerId;
        this.customerMailId = customerMailId;
        this.propertyId = propertyId;
        this.propertyName = propertyName;
        this.customerName = customerName;
        this.agentId = agentId;
        this.createdAt = createdAt;
    }

    public int getId() {
        return id;
    }

    public String getCustomerId() {
        return customerId;
    }

    public String getCustomerMailId() {
        return customerMailId;
    }

    public String getPropertyId() {
        return propertyId;
    }

    public String getPropertyName() {
        return propertyName;
    }

    public String getCustomerName() {
        return customerName;
    }

    public String getAgentId() {
        return agentId;
    }

    public String getCreatedAt() {
        return createdAt;
    }
}
