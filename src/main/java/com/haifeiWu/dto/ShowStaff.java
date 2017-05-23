package com.haifeiWu.dto;

public class ShowStaff {
	private Integer staff_ID;
	private String staff_Name;// 用户名（默认工号）
	private String real_Name;// 真实姓名
	private String Sex;// 性别
	// private String Duties_Name;// 职务
	private String role_Name;// 权限，普通干警高级干警和管理员
	private String Email;// 邮箱
	private String Phone;// 移动电话
	private String Mobile;// 固话

	public ShowStaff() {
	}

	public ShowStaff(Integer staff_ID, String staff_Name, String real_Name,
			String sex, String role_Name, String email, String phone,
			String mobile) {
		super();
		this.staff_ID = staff_ID;
		this.staff_Name = staff_Name;
		this.real_Name = real_Name;
		Sex = sex;
		this.role_Name = role_Name;
		Email = email;
		Phone = phone;
		Mobile = mobile;
	}

	public Integer getStaff_ID() {
		return staff_ID;
	}

	public void setStaff_ID(Integer staff_ID) {
		this.staff_ID = staff_ID;
	}

	public String getStaff_Name() {
		return staff_Name;
	}

	public void setStaff_Name(String staff_Name) {
		staff_Name = staff_Name;
	}

	public String getReal_Name() {
		return real_Name;
	}

	public void setReal_Name(String real_Name) {
		this.real_Name = real_Name;
	}

	public String getSex() {
		return Sex;
	}

	public void setSex(String sex) {
		Sex = sex;
	}

	public String getRole_Name() {
		return role_Name;
	}

	public void setRole_Name(String role_Name) {
		this.role_Name = role_Name;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	public String getMobile() {
		return Mobile;
	}

	public void setMobile(String mobile) {
		Mobile = mobile;
	}

}
