package com.work.dto;

public class Member {
	private String userid;
	private String userpw;
	private String name;
	private String birthday;
	private String gender;
	private String phone;
	private String email;
	private int postNo;
	private String addressOld;
	private String addressNew;
	private String addressMisc;
	private int mileage;
	private String grade;
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getPostNo() {
		return postNo;
	}
	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}
	public String getAddressOld() {
		return addressOld;
	}
	public void setAddressOld(String addressOld) {
		this.addressOld = addressOld;
	}
	public String getAddressNew() {
		return addressNew;
	}
	public void setAddressNew(String addressNew) {
		this.addressNew = addressNew;
	}
	public String getAddressMisc() {
		return addressMisc;
	}
	public void setAddressMisc(String addressMisc) {
		this.addressMisc = addressMisc;
	}
	public int getMileage() {
		return mileage;
	}
	public void setMileage(int mileage) {
		this.mileage = mileage;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public Member(String userid, String userpw, String name, String birthday, String gender, String phone, String email,
			int postNo, String addressOld, String addressNew, String addressMisc, int mileage, String grade) {
		super();
		this.userid = userid;
		this.userpw = userpw;
		this.name = name;
		this.birthday = birthday;
		this.gender = gender;
		this.phone = phone;
		this.email = email;
		this.postNo = postNo;
		this.addressOld = addressOld;
		this.addressNew = addressNew;
		this.addressMisc = addressMisc;
		this.mileage = mileage;
		this.grade = grade;
	}
	public Member() {
		super();
	}
	@Override
	public String toString() {
		return "userid=" + userid + ", userpw=" + userpw + ", name=" + name + ", birthday=" + birthday + ", gender="
				+ gender + ", phone=" + phone + ", email=" + email + ", postNo=" + postNo + ", addressOld=" + addressOld
				+ ", addressNew=" + addressNew + ", addressMisc=" + addressMisc + ", mileage=" + mileage + ", grade="
				+ grade;
	}
	
	

}
