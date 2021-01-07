package omtbs.model.beans;

import java.io.Serializable;

public class CustomerBean implements Serializable {
	private int userId;
	private String usertype;
	private String name;
	private String email;
	private String password;
	private String ccardnumber;
	private String address;
	private String phone;
	private String gender;
	
	public CustomerBean() {
		
	}
	
	public int getUserId() {
		return userId;
	}
	public String getUsertype() {
		return usertype;
	}
	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCcardnumber() {
		return ccardnumber;
	}
	public void setCcardnumber(String ccardnumber) {
		this.ccardnumber = ccardnumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}

	public String toString() {
		return "CustomerBean [userId=" + userId + ", usertype=" + usertype + ", name=" + name + ", email=" + email
				+ ", password=" + password + ", ccardnumber=" + ccardnumber + ", address=" + address + ", phone="
				+ phone + ", gender=" + gender + "]";
	}
	
}
