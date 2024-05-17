package dao;

import java.sql.Timestamp;

public class agent {
	/*
	 * private String status; private String specialization; private String
	 * socialMediaLinks; private byte[] profilePicture; private String phoneNumber;
	 * private String password; private String notes; private String name; private
	 * String licenseNumber; private String languagesSpoken; private int experience;
	 * private String emailAddress; private String companyName; private double
	 * commissionRate; private String agentID; private String address;
	 */
	    
	    
	    
	    
	    
	    private String agentId;
	    private String fullName;
	    private String email;
	    private String phone;
	    private String licenseNumber;
	    private String specialization;
	    private String experience;
	    private String languagesSpoken;
	    private String commissionRate;
	    private String dob;
	    private String gender;
	    private String salesPerformance;
	    private String address;
	    private String address1;
	    private String country;
	    private String state;
	    private String city;
	    private String zipcode;
	    private String status;
	    private String adharcard;
	    private byte[] adharcardImage;
	    private String pancard;
	    private byte[] pancardDoc;
	    private String notes;
	    private String password;
	    private byte[] profile;
	    private Timestamp createdOn;

	    public Timestamp getCreatedOn() {
	        return createdOn;
	    }

	    public void setCreatedOn(Timestamp createdOn) {
	        this.createdOn = createdOn;
	    }
	    
	    
	    
	    
	    
	    
	    
	  public agent() {
		// TODO Auto-generated constructor stub
	}








	public agent(String agentId, String fullName, String email, String phone, String licenseNumber,
			String specialization, String experience, String languagesSpoken, String commissionRate, String dob,
			String gender, String salesPerformance, String address, String address1, String country, String state,
			String city, String zipcode, String status, String adharcard, byte[] adharcardImage, String pancard,
			byte[] pancardDoc, String notes, String password, byte[] profile) {
		super();
		this.agentId = agentId;
		this.fullName = fullName;
		this.email = email;
		this.phone = phone;
		this.licenseNumber = licenseNumber;
		this.specialization = specialization;
		this.experience = experience;
		this.languagesSpoken = languagesSpoken;
		this.commissionRate = commissionRate;
		this.dob = dob;
		this.gender = gender;
		this.salesPerformance = salesPerformance;
		this.address = address;
		this.address1 = address1;
		this.country = country;
		this.state = state;
		this.city = city;
		this.zipcode = zipcode;
		this.status = status;
		this.adharcard = adharcard;
		this.adharcardImage = adharcardImage;
		this.pancard = pancard;
		this.pancardDoc = pancardDoc;
		this.notes = notes;
		this.password = password;
		this.profile = profile;
	}








	public agent(String agentId, String fullName, String email, String phone, String licenseNumber,
			String specialization, String experience, String languagesSpoken, String commissionRate, String dob,
			String gender, String salesPerformance, String address, String address1, String country, String state,
			String city, String zipcode, String status, String adharcard, String pancard, String notes,
			String password) {
		super();
		this.agentId = agentId;
		this.fullName = fullName;
		this.email = email;
		this.phone = phone;
		this.licenseNumber = licenseNumber;
		this.specialization = specialization;
		this.experience = experience;
		this.languagesSpoken = languagesSpoken;
		this.commissionRate = commissionRate;
		this.dob = dob;
		this.gender = gender;
		this.salesPerformance = salesPerformance;
		this.address = address;
		this.address1 = address1;
		this.country = country;
		this.state = state;
		this.city = city;
		this.zipcode = zipcode;
		this.status = status;
		this.adharcard = adharcard;
		this.pancard = pancard;
		this.notes = notes;
		this.password = password;
	}








	public String getAgentId() {
		return agentId;
	}








	public void setAgentId(String agentId) {
		this.agentId = agentId;
	}








	public String getFullName() {
		return fullName;
	}








	public void setFullName(String fullName) {
		this.fullName = fullName;
	}








	public String getEmail() {
		return email;
	}








	public void setEmail(String email) {
		this.email = email;
	}








	public String getPhone() {
		return phone;
	}








	public void setPhone(String phone) {
		this.phone = phone;
	}








	public String getLicenseNumber() {
		return licenseNumber;
	}








	public void setLicenseNumber(String licenseNumber) {
		this.licenseNumber = licenseNumber;
	}








	public String getSpecialization() {
		return specialization;
	}








	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}








	public String getExperience() {
		return experience;
	}








	public void setExperience(String experience) {
		this.experience = experience;
	}








	public String getLanguagesSpoken() {
		return languagesSpoken;
	}








	public void setLanguagesSpoken(String languagesSpoken) {
		this.languagesSpoken = languagesSpoken;
	}








	public String getCommissionRate() {
		return commissionRate;
	}








	public void setCommissionRate(String commissionRate) {
		this.commissionRate = commissionRate;
	}








	public String getDob() {
		return dob;
	}








	public void setDob(String dob) {
		this.dob = dob;
	}








	public String getGender() {
		return gender;
	}








	public void setGender(String gender) {
		this.gender = gender;
	}








	public String getSalesPerformance() {
		return salesPerformance;
	}








	public void setSalesPerformance(String salesPerformance) {
		this.salesPerformance = salesPerformance;
	}








	public String getAddress() {
		return address;
	}








	public void setAddress(String address) {
		this.address = address;
	}








	public String getAddress1() {
		return address1;
	}








	public void setAddress1(String address1) {
		this.address1 = address1;
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








	public String getCity() {
		return city;
	}








	public void setCity(String city) {
		this.city = city;
	}








	public String getZipcode() {
		return zipcode;
	}








	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}








	public String getStatus() {
		return status;
	}








	public void setStatus(String status) {
		this.status = status;
	}








	public String getAdharcard() {
		return adharcard;
	}








	public void setAdharcard(String adharcard) {
		this.adharcard = adharcard;
	}








	public byte[] getAdharcardImage() {
		return adharcardImage;
	}








	public void setAdharcardImage(byte[] adharcardImage) {
		this.adharcardImage = adharcardImage;
	}








	public String getPancard() {
		return pancard;
	}








	public void setPancard(String pancard) {
		this.pancard = pancard;
	}








	public byte[] getPancardDoc() {
		return pancardDoc;
	}








	public void setPancardDoc(byte[] pancardDoc) {
		this.pancardDoc = pancardDoc;
	}








	public String getNotes() {
		return notes;
	}








	public void setNotes(String notes) {
		this.notes = notes;
	}








	public String getPassword() {
		return password;
	}








	public void setPassword(String password) {
		this.password = password;
	}








	public byte[] getProfile() {
		return profile;
	}








	public void setProfile(byte[] profile) {
		this.profile = profile;
	}

	public agent(String agentId, String fullName, String email, String phone, String licenseNumber,
			String specialization, String experience, String languagesSpoken, String commissionRate, String dob,
			String gender, String salesPerformance, String address, String address1, String country, String state,
			String city, String zipcode, String status, String adharcard, String pancard, String notes, String password,
			Timestamp createdOn) {
		super();
		this.agentId = agentId;
		this.fullName = fullName;
		this.email = email;
		this.phone = phone;
		this.licenseNumber = licenseNumber;
		this.specialization = specialization;
		this.experience = experience;
		this.languagesSpoken = languagesSpoken;
		this.commissionRate = commissionRate;
		this.dob = dob;
		this.gender = gender;
		this.salesPerformance = salesPerformance;
		this.address = address;
		this.address1 = address1;
		this.country = country;
		this.state = state;
		this.city = city;
		this.zipcode = zipcode;
		this.status = status;
		this.adharcard = adharcard;
		this.pancard = pancard;
		this.notes = notes;
		this.password = password;
		this.createdOn = createdOn;
	}
	  
	  
}
