package dao;

public class transiction_property {
	
	
	private String transitionId;
    private String propertyId;
    private String propertyType;
    private String oldOwnerName;
    private String oldOwnerEmail;
    private String oldOwnerPhoneNo;
    private String currentOwnerName;
    private String currentOwnerEmail;
    private String currentOwnerPhoneNo;
    private String newOwnerName;
    private String newOwnerEmail;
    private String newOwnerPhoneNo;
    private String status;
    private String currentPrice;
    private String oldPrice;
    private String newPrice;
    private String currentAgentId;
    private String oldRent;
    private String newRent;
    private String currentRent;
    private String oldLeaseEndDate;
    private String currentLeaseEndDate;
    private String transitionDate;
    private String comments;
    private String propertyCategory;
    
    public transiction_property() {
		// TODO Auto-generated constructor stub
	}

	public String getTransitionId() {
		return transitionId;
	}

	public void setTransitionId(String transitionId) {
		this.transitionId = transitionId;
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

	public String getOldOwnerName() {
		return oldOwnerName;
	}

	public void setOldOwnerName(String oldOwnerName) {
		this.oldOwnerName = oldOwnerName;
	}

	public String getOldOwnerEmail() {
		return oldOwnerEmail;
	}

	public void setOldOwnerEmail(String oldOwnerEmail) {
		this.oldOwnerEmail = oldOwnerEmail;
	}

	public String getOldOwnerPhoneNo() {
		return oldOwnerPhoneNo;
	}

	public void setOldOwnerPhoneNo(String oldOwnerPhoneNo) {
		this.oldOwnerPhoneNo = oldOwnerPhoneNo;
	}

	public String getCurrentOwnerName() {
		return currentOwnerName;
	}

	public void setCurrentOwnerName(String currentOwnerName) {
		this.currentOwnerName = currentOwnerName;
	}

	public String getCurrentOwnerEmail() {
		return currentOwnerEmail;
	}

	public void setCurrentOwnerEmail(String currentOwnerEmail) {
		this.currentOwnerEmail = currentOwnerEmail;
	}

	public String getCurrentOwnerPhoneNo() {
		return currentOwnerPhoneNo;
	}

	public void setCurrentOwnerPhoneNo(String currentOwnerPhoneNo) {
		this.currentOwnerPhoneNo = currentOwnerPhoneNo;
	}

	public String getNewOwnerName() {
		return newOwnerName;
	}

	public void setNewOwnerName(String newOwnerName) {
		this.newOwnerName = newOwnerName;
	}

	public String getNewOwnerEmail() {
		return newOwnerEmail;
	}

	public void setNewOwnerEmail(String newOwnerEmail) {
		this.newOwnerEmail = newOwnerEmail;
	}

	public String getNewOwnerPhoneNo() {
		return newOwnerPhoneNo;
	}

	public void setNewOwnerPhoneNo(String newOwnerPhoneNo) {
		this.newOwnerPhoneNo = newOwnerPhoneNo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCurrentPrice() {
		return currentPrice;
	}

	public void setCurrentPrice(String currentPrice) {
		this.currentPrice = currentPrice;
	}

	public String getOldPrice() {
		return oldPrice;
	}

	public void setOldPrice(String oldPrice) {
		this.oldPrice = oldPrice;
	}

	public String getNewPrice() {
		return newPrice;
	}

	public void setNewPrice(String newPrice) {
		this.newPrice = newPrice;
	}

	public String getCurrentAgentId() {
		return currentAgentId;
	}

	public void setCurrentAgentId(String currentAgentId) {
		this.currentAgentId = currentAgentId;
	}

	public String getOldRent() {
		return oldRent;
	}

	public void setOldRent(String oldRent) {
		this.oldRent = oldRent;
	}

	public String getNewRent() {
		return newRent;
	}

	public void setNewRent(String newRent) {
		this.newRent = newRent;
	}

	public String getCurrentRent() {
		return currentRent;
	}

	public void setCurrentRent(String currentRent) {
		this.currentRent = currentRent;
	}

	public String getOldLeaseEndDate() {
		return oldLeaseEndDate;
	}

	public void setOldLeaseEndDate(String oldLeaseEndDate) {
		this.oldLeaseEndDate = oldLeaseEndDate;
	}

	public String getCurrentLeaseEndDate() {
		return currentLeaseEndDate;
	}

	public void setCurrentLeaseEndDate(String currentLeaseEndDate) {
		this.currentLeaseEndDate = currentLeaseEndDate;
	}

	public String getTransitionDate() {
		return transitionDate;
	}

	public void setTransitionDate(String transitionDate) {
		this.transitionDate = transitionDate;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getPropertyCategory() {
		return propertyCategory;
	}

	public void setPropertyCategory(String propertyCategory) {
		this.propertyCategory = propertyCategory;
	}

	public transiction_property(String transitionId, String propertyId, String propertyType, String oldOwnerName,
			String oldOwnerEmail, String oldOwnerPhoneNo, String currentOwnerName, String currentOwnerEmail,
			String currentOwnerPhoneNo, String newOwnerName, String newOwnerEmail, String newOwnerPhoneNo,
			String status, String currentPrice, String oldPrice, String newPrice, String currentAgentId, String oldRent,
			String newRent, String currentRent, String oldLeaseEndDate, String currentLeaseEndDate,
			String transitionDate, String comments, String propertyCategory) {
		super();
		this.transitionId = transitionId;
		this.propertyId = propertyId;
		this.propertyType = propertyType;
		this.oldOwnerName = oldOwnerName;
		this.oldOwnerEmail = oldOwnerEmail;
		this.oldOwnerPhoneNo = oldOwnerPhoneNo;
		this.currentOwnerName = currentOwnerName;
		this.currentOwnerEmail = currentOwnerEmail;
		this.currentOwnerPhoneNo = currentOwnerPhoneNo;
		this.newOwnerName = newOwnerName;
		this.newOwnerEmail = newOwnerEmail;
		this.newOwnerPhoneNo = newOwnerPhoneNo;
		this.status = status;
		this.currentPrice = currentPrice;
		this.oldPrice = oldPrice;
		this.newPrice = newPrice;
		this.currentAgentId = currentAgentId;
		this.oldRent = oldRent;
		this.newRent = newRent;
		this.currentRent = currentRent;
		this.oldLeaseEndDate = oldLeaseEndDate;
		this.currentLeaseEndDate = currentLeaseEndDate;
		this.transitionDate = transitionDate;
		this.comments = comments;
		this.propertyCategory = propertyCategory;
	}

	public transiction_property(String transitionId, String propertyId, String propertyType, String oldOwnerName,
			String oldOwnerEmail, String oldOwnerPhoneNo, String currentOwnerName, String currentOwnerEmail,
			String currentOwnerPhoneNo, String newOwnerName, String newOwnerEmail, String newOwnerPhoneNo,
			String status, String currentPrice, String oldPrice, String newPrice, String currentAgentId, String oldRent,
			String newRent, String currentRent, String oldLeaseEndDate, String currentLeaseEndDate,
			String propertyCategory) {
		super();
		this.transitionId = transitionId;
		this.propertyId = propertyId;
		this.propertyType = propertyType;
		this.oldOwnerName = oldOwnerName;
		this.oldOwnerEmail = oldOwnerEmail;
		this.oldOwnerPhoneNo = oldOwnerPhoneNo;
		this.currentOwnerName = currentOwnerName;
		this.currentOwnerEmail = currentOwnerEmail;
		this.currentOwnerPhoneNo = currentOwnerPhoneNo;
		this.newOwnerName = newOwnerName;
		this.newOwnerEmail = newOwnerEmail;
		this.newOwnerPhoneNo = newOwnerPhoneNo;
		this.status = status;
		this.currentPrice = currentPrice;
		this.oldPrice = oldPrice;
		this.newPrice = newPrice;
		this.currentAgentId = currentAgentId;
		this.oldRent = oldRent;
		this.newRent = newRent;
		this.currentRent = currentRent;
		this.oldLeaseEndDate = oldLeaseEndDate;
		this.currentLeaseEndDate = currentLeaseEndDate;
		this.propertyCategory = propertyCategory;
	}
    
    

}
