package dao;
import java.util.Date;

public class PropertyDTO {
    private int propertyId;
    private String propertyName;
    private String propertyType;
    private String location;
    private String landmark;
    private double price;
    private Integer bedrooms;
    private Integer bathrooms;
    private Double areaSqft;
    private String description;
    private Date listedDate;
    private Integer agentId;
    private String country;
    private String city;
    private String postalCode;
    
    // Default constructor
    public PropertyDTO() {
        // Initialize variables if needed
    }

    // Parameterized constructor
    public PropertyDTO(int propertyId, String propertyName, String propertyType, String location,
                       String landmark, double price, Integer bedrooms, Integer bathrooms, Double areaSqft,
                       String description, Date listedDate, Integer agentId, String country, String city,
                       String postalCode) {
        this.propertyId = propertyId;
        this.propertyName = propertyName;
        this.propertyType = propertyType;
        this.location = location;
        this.landmark = landmark;
        this.price = price;
        this.bedrooms = bedrooms;
        this.bathrooms = bathrooms;
        this.areaSqft = areaSqft;
        this.description = description;
        this.listedDate = listedDate;
        this.agentId = agentId;
        this.country = country;
        this.city = city;
        this.postalCode = postalCode;
    }

    // Getter and setter methods for each property
    public int getPropertyId() {
        return propertyId;
    }

    public void setPropertyId(int propertyId) {
        this.propertyId = propertyId;
    }

    public String getPropertyName() {
        return propertyName;
    }

    public void setPropertyName(String propertyName) {
        this.propertyName = propertyName;
    }

    public String getPropertyType() {
        return propertyType;
    }

    public void setPropertyType(String propertyType) {
        this.propertyType = propertyType;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getLandmark() {
        return landmark;
    }

    public void setLandmark(String landmark) {
        this.landmark = landmark;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Integer getBedrooms() {
        return bedrooms;
    }

    public void setBedrooms(Integer bedrooms) {
        this.bedrooms = bedrooms;
    }

    public Integer getBathrooms() {
        return bathrooms;
    }

    public void setBathrooms(Integer bathrooms) {
        this.bathrooms = bathrooms;
    }

    public Double getAreaSqft() {
        return areaSqft;
    }

    public void setAreaSqft(Double areaSqft) {
        this.areaSqft = areaSqft;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getListedDate() {
        return listedDate;
    }

    public void setListedDate(Date listedDate) {
        this.listedDate = listedDate;
    }

    public Integer getAgentId() {
        return agentId;
    }

    public void setAgentId(Integer agentId) {
        this.agentId = agentId;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }
}
