package dao;

public class agent {
	  private String status;
	    private String specialization;
	    private String socialMediaLinks;
	    private byte[] profilePicture;
	    private String phoneNumber;
	    private String password;
	    private String notes;
	    private String name;
	    private String licenseNumber;
	    private String languagesSpoken;
	    private int experience;
	    private String emailAddress;
	    private String companyName;
	    private double commissionRate;
	    private String agentID;
	    private String address;
	    
	    
	    public agent() {
			// TODO Auto-generated constructor stub
		}


		public agent(String status, String specialization, String socialMediaLinks, String phoneNumber, String password,
				String notes, String name, String licenseNumber, String languagesSpoken, int experience,
				String emailAddress, String companyName, double commissionRate, String agentID, String address) {
			super();
			this.status = status;
			this.specialization = specialization;
			this.socialMediaLinks = socialMediaLinks;
			this.phoneNumber = phoneNumber;
			this.password = password;
			this.notes = notes;
			this.name = name;
			this.licenseNumber = licenseNumber;
			this.languagesSpoken = languagesSpoken;
			this.experience = experience;
			this.emailAddress = emailAddress;
			this.companyName = companyName;
			this.commissionRate = commissionRate;
			this.agentID = agentID;
			this.address = address;
		}


		public String getStatus() {
			return status;
		}


		public void setStatus(String status) {
			this.status = status;
		}


		public String getSpecialization() {
			return specialization;
		}


		public void setSpecialization(String specialization) {
			this.specialization = specialization;
		}


		public String getSocialMediaLinks() {
			return socialMediaLinks;
		}


		public void setSocialMediaLinks(String socialMediaLinks) {
			this.socialMediaLinks = socialMediaLinks;
		}


		public byte[] getProfilePicture() {
			return profilePicture;
		}


		public void setProfilePicture(byte[] profilePicture) {
			this.profilePicture = profilePicture;
		}


		public String getPhoneNumber() {
			return phoneNumber;
		}


		public void setPhoneNumber(String phoneNumber) {
			this.phoneNumber = phoneNumber;
		}


		public String getPassword() {
			return password;
		}


		public void setPassword(String password) {
			this.password = password;
		}


		public String getNotes() {
			return notes;
		}


		public void setNotes(String notes) {
			this.notes = notes;
		}


		public String getName() {
			return name;
		}


		public void setName(String name) {
			this.name = name;
		}


		public String getLicenseNumber() {
			return licenseNumber;
		}


		public void setLicenseNumber(String licenseNumber) {
			this.licenseNumber = licenseNumber;
		}


		public String getLanguagesSpoken() {
			return languagesSpoken;
		}


		public void setLanguagesSpoken(String languagesSpoken) {
			this.languagesSpoken = languagesSpoken;
		}


		public int getExperience() {
			return experience;
		}


		public void setExperience(int experience) {
			this.experience = experience;
		}


		public String getEmailAddress() {
			return emailAddress;
		}


		public void setEmailAddress(String emailAddress) {
			this.emailAddress = emailAddress;
		}


		public String getCompanyName() {
			return companyName;
		}


		public void setCompanyName(String companyName) {
			this.companyName = companyName;
		}


		public double getCommissionRate() {
			return commissionRate;
		}


		public void setCommissionRate(double commissionRate) {
			this.commissionRate = commissionRate;
		}


		public String getAgentID() {
			return agentID;
		}


		public void setAgentID(String agentID) {
			this.agentID = agentID;
		}


		public String getAddress() {
			return address;
		}


		public void setAddress(String address) {
			this.address = address;
		}


		public agent(String status, String specialization, String socialMediaLinks, byte[] profilePicture,
				String phoneNumber, String password, String notes, String name, String licenseNumber,
				String languagesSpoken, int experience, String emailAddress, String companyName, double commissionRate,
				String agentID, String address) {
			super();
			this.status = status;
			this.specialization = specialization;
			this.socialMediaLinks = socialMediaLinks;
			this.profilePicture = profilePicture;
			this.phoneNumber = phoneNumber;
			this.password = password;
			this.notes = notes;
			this.name = name;
			this.licenseNumber = licenseNumber;
			this.languagesSpoken = languagesSpoken;
			this.experience = experience;
			this.emailAddress = emailAddress;
			this.companyName = companyName;
			this.commissionRate = commissionRate;
			this.agentID = agentID;
			this.address = address;
		}
	    
	    
}
