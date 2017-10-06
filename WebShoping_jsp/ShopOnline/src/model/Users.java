package model;

public class Users {

	private long userID;
	private String userName;
	private String userPass;
	private Boolean userRole;
	
	
	public Users() {
		super();
	}

	public Users(long userID, String userName, String userPass, Boolean userRole) {
		super();
		this.userID = userID;
		this.userName = userName;
		this.userPass = userPass;
		this.userRole = userRole;
	}

	public long getUserID() {
		return userID;
	}

	public void setUserID(long userID) {
		this.userID = userID;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPass() {
		return userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public Boolean getUserRole() {
		return userRole;
	}

	public void setUserRole(Boolean userRole) {
		this.userRole = userRole;
	}
	
}
