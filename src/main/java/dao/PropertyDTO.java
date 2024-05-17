package dao;
import java.util.Date;
/*
 * public class PropertyDTO { private int propertyId; private String
 * propertyName; private String propertyType; private String location; private
 * String landmark; private double price; private Integer bedrooms; private
 * Integer bathrooms; private Double areaSqft; private String description;
 * private Date listedDate; private Integer agentId; private String country;
 * private String city; private String postalCode;
 * 
 * // Default constructor
 * 
 * // Parameterized constructor public PropertyDTO(int propertyId, String
 * propertyName, String propertyType, String location, String landmark, double
 * price, Integer bedrooms, Integer bathrooms, Double areaSqft, String
 * description, Date listedDate, Integer agentId, String country, String city,
 * String postalCode) { this.propertyId = propertyId; this.propertyName =
 * propertyName; this.propertyType = propertyType; this.location = location;
 * this.landmark = landmark; this.price = price; this.bedrooms = bedrooms;
 * this.bathrooms = bathrooms; this.areaSqft = areaSqft; this.description =
 * description; this.listedDate = listedDate; this.agentId = agentId;
 * this.country = country; this.city = city; this.postalCode = postalCode; }
 * 
 * // Getter and setter methods for each property public int getPropertyId() {
 * return propertyId; }
 * 
 * public void setPropertyId(int propertyId) { this.propertyId = propertyId; }
 * 
 * public String getPropertyName() { return propertyName; }
 * 
 * public void setPropertyName(String propertyName) { this.propertyName =
 * propertyName; }
 * 
 * public String getPropertyType() { return propertyType; }
 * 
 * public void setPropertyType(String propertyType) { this.propertyType =
 * propertyType; }
 * 
 * public String getLocation() { return location; }
 * 
 * public void setLocation(String location) { this.location = location; }
 * 
 * public String getLandmark() { return landmark; }
 * 
 * public void setLandmark(String landmark) { this.landmark = landmark; }
 * 
 * public double getPrice() { return price; }
 * 
 * public void setPrice(double price) { this.price = price; }
 * 
 * public Integer getBedrooms() { return bedrooms; }
 * 
 * public void setBedrooms(Integer bedrooms) { this.bedrooms = bedrooms; }
 * 
 * public Integer getBathrooms() { return bathrooms; }
 * 
 * public void setBathrooms(Integer bathrooms) { this.bathrooms = bathrooms; }
 * 
 * public Double getAreaSqft() { return areaSqft; }
 * 
 * public void setAreaSqft(Double areaSqft) { this.areaSqft = areaSqft; }
 * 
 * public String getDescription() { return description; }
 * 
 * public void setDescription(String description) { this.description =
 * description; }
 * 
 * public Date getListedDate() { return listedDate; }
 * 
 * public void setListedDate(Date listedDate) { this.listedDate = listedDate; }
 * 
 * public Integer getAgentId() { return agentId; }
 * 
 * public void setAgentId(Integer agentId) { this.agentId = agentId; }
 * 
 * public String getCountry() { return country; }
 * 
 * public void setCountry(String country) { this.country = country; }
 * 
 * public String getCity() { return city; }
 * 
 * public void setCity(String city) { this.city = city; }
 * 
 * public String getPostalCode() { return postalCode; }
 * 
 * public void setPostalCode(String postalCode) { this.postalCode = postalCode;
 * } }
 * 
 */




public class PropertyDTO {
    public PropertyDTO(String propertyName, String propertyId, String propertyType, String category, String price,
			String area, String width, String length, String transaction, String ownership, String consYear,
			String floors, String direction, String openside, String address, String landmark, String schemeNo,
			String ward, String assembly, String zipcode, String city, String country, String state, String security,
			String parkArea, String gasCon, String waterCon, String noOfLift, String overlooking, String elec,
			String fur, String internet, String ownerName, String ownerNumber, String ownerEmail, String agentName,
			String agentId, String status, String notes, String rent, String bedrooms, String bathrooms, String kitchen,
			String living, String dining, String parking, String carpetArea, String garden) {
		super();
		this.propertyName = propertyName;
		this.propertyId = propertyId;
		this.propertyType = propertyType;
		this.category = category;
		this.price = price;
		this.area = area;
		this.width = width;
		this.length = length;
		this.transaction = transaction;
		this.ownership = ownership;
		this.consYear = consYear;
		this.floors = floors;
		this.direction = direction;
		this.openside = openside;
		this.address = address;
		this.landmark = landmark;
		this.schemeNo = schemeNo;
		this.ward = ward;
		this.assembly = assembly;
		this.zipcode = zipcode;
		this.city = city;
		this.country = country;
		this.state = state;
		this.security = security;
		this.parkArea = parkArea;
		this.gasCon = gasCon;
		this.waterCon = waterCon;
		this.noOfLift = noOfLift;
		this.overlooking = overlooking;
		this.elec = elec;
		this.fur = fur;
		this.internet = internet;
		this.ownerName = ownerName;
		this.ownerNumber = ownerNumber;
		this.ownerEmail = ownerEmail;
		this.agentName = agentName;
		this.agentId = agentId;
		this.status = status;
		this.notes = notes;
		this.rent = rent;
		this.bedrooms = bedrooms;
		this.bathrooms = bathrooms;
		this.kitchen = kitchen;
		this.living = living;
		this.dining = dining;
		this.parking = parking;
		this.carpetArea = carpetArea;
		this.garden = garden;
	}
	private String propertyName;
    private String propertyId;
    private String propertyType;
    private String category;
    private String price;
    private String area;
    private String width;
    private String length;
    private String transaction;
    private String ownership;
    private String consYear;
    private String floors;
    private String direction;
    private String openside;
    private String address;
    private String landmark;
    private String schemeNo;
    private String ward;
    private String assembly;
    private String zipcode;
    private String city;
    private String country;
    private String state;
    private String security;
    private String parkArea;
    private String gasCon;
    private String waterCon;
    private String noOfLift;
    private String overlooking;
    private String elec;
    private String fur;
    private String internet;
    private String ownerName;
    private String ownerNumber;
    private String ownerEmail;
    private String agentName;
    private String agentId;
    private String status;
    private String notes;
    private String rent;
    private String bedrooms;
    private String bathrooms;
    private String kitchen;
    private String living;
    private String dining;
    private String parking;
    private String carpetArea;
    private String garden;
	public String getPropertyName() {
		return propertyName;
	}
	public void setPropertyName(String propertyName) {
		this.propertyName = propertyName;
	}
	public String getPropertyId() {
		return propertyId;
	}
	public void setPropertyId(String propertyId) {
		this.propertyId = propertyId;
	}
	public String getPropertyType() {
		return propertyType;
	}
	public void setPropertyType(String propertyType) {
		this.propertyType = propertyType;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getWidth() {
		return width;
	}
	public void setWidth(String width) {
		this.width = width;
	}
	public String getLength() {
		return length;
	}
	public void setLength(String length) {
		this.length = length;
	}
	public String getTransaction() {
		return transaction;
	}
	public void setTransaction(String transaction) {
		this.transaction = transaction;
	}
	public String getOwnership() {
		return ownership;
	}
	public void setOwnership(String ownership) {
		this.ownership = ownership;
	}
	public String getConsYear() {
		return consYear;
	}
	public void setConsYear(String consYear) {
		this.consYear = consYear;
	}
	public String getFloors() {
		return floors;
	}
	public void setFloors(String floors) {
		this.floors = floors;
	}
	public String getDirection() {
		return direction;
	}
	public void setDirection(String direction) {
		this.direction = direction;
	}
	public String getOpenside() {
		return openside;
	}
	public void setOpenside(String openside) {
		this.openside = openside;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getLandmark() {
		return landmark;
	}
	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}
	public String getSchemeNo() {
		return schemeNo;
	}
	public void setSchemeNo(String schemeNo) {
		this.schemeNo = schemeNo;
	}
	public String getWard() {
		return ward;
	}
	public void setWard(String ward) {
		this.ward = ward;
	}
	public String getAssembly() {
		return assembly;
	}
	public void setAssembly(String assembly) {
		this.assembly = assembly;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getSecurity() {
		return security;
	}
	public void setSecurity(String security) {
		this.security = security;
	}
	public String getParkArea() {
		return parkArea;
	}
	public void setParkArea(String parkArea) {
		this.parkArea = parkArea;
	}
	public String getGasCon() {
		return gasCon;
	}
	public void setGasCon(String gasCon) {
		this.gasCon = gasCon;
	}
	public String getWaterCon() {
		return waterCon;
	}
	public void setWaterCon(String waterCon) {
		this.waterCon = waterCon;
	}
	public String getNoOfLift() {
		return noOfLift;
	}
	public void setNoOfLift(String noOfLift) {
		this.noOfLift = noOfLift;
	}
	public String getOverlooking() {
		return overlooking;
	}
	public void setOverlooking(String overlooking) {
		this.overlooking = overlooking;
	}
	public String getElec() {
		return elec;
	}
	public void setElec(String elec) {
		this.elec = elec;
	}
	public String getFur() {
		return fur;
	}
	public void setFur(String fur) {
		this.fur = fur;
	}
	public String getInternet() {
		return internet;
	}
	public void setInternet(String internet) {
		this.internet = internet;
	}
	public String getOwnerName() {
		return ownerName;
	}
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}
	public String getOwnerNumber() {
		return ownerNumber;
	}
	public void setOwnerNumber(String ownerNumber) {
		this.ownerNumber = ownerNumber;
	}
	public String getOwnerEmail() {
		return ownerEmail;
	}
	public void setOwnerEmail(String ownerEmail) {
		this.ownerEmail = ownerEmail;
	}
	public String getAgentName() {
		return agentName;
	}
	public void setAgentName(String agentName) {
		this.agentName = agentName;
	}
	public String getAgentId() {
		return agentId;
	}
	public void setAgentId(String agentId) {
		this.agentId = agentId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getNotes() {
		return notes;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}
	public String getRent() {
		return rent;
	}
	public void setRent(String rent) {
		this.rent = rent;
	}
	public String getBedrooms() {
		return bedrooms;
	}
	public void setBedrooms(String bedrooms) {
		this.bedrooms = bedrooms;
	}
	public String getBathrooms() {
		return bathrooms;
	}
	public void setBathrooms(String bathrooms) {
		this.bathrooms = bathrooms;
	}
	public String getKitchen() {
		return kitchen;
	}
	public void setKitchen(String kitchen) {
		this.kitchen = kitchen;
	}
	public String getLiving() {
		return living;
	}
	public void setLiving(String living) {
		this.living = living;
	}
	public String getDining() {
		return dining;
	}
	public void setDining(String dining) {
		this.dining = dining;
	}
	public String getParking() {
		return parking;
	}
	public void setParking(String parking) {
		this.parking = parking;
	}
	public String getCarpetArea() {
		return carpetArea;
	}
	public void setCarpetArea(String carpetArea) {
		this.carpetArea = carpetArea;
	}
	public String getGarden() {
		return garden;
	}
	public void setGarden(String garden) {
		this.garden = garden;
	}

	
	
	
	
	
    // Getters and Setters
}
