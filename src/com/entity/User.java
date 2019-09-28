package com.entity;

public class User {
	// 用户名
	private String uName;
	// 用户密码
	private String uPwd;
	// 用户邮箱
	private String uEmail;
	// 用户手机号
	private String uPhone;
	// 用户的QQ号
	private String uQQ;

	public User(String uName, String uPwd, String uEmail, String uPhone,
			String uQQ) {
		super();
		this.uName = uName;
		this.uPwd = uPwd;
		this.uEmail = uEmail;
		this.uPhone = uPhone;
		this.uQQ = uQQ;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getuPwd() {
		return uPwd;
	}

	public void setuPwd(String uPwd) {
		this.uPwd = uPwd;
	}

	public String getuEmail() {
		return uEmail;
	}

	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}

	public String getuPhone() {
		return uPhone;
	}

	public void setuPhone(String uPhone) {
		this.uPhone = uPhone;
	}

	public String getuQQ() {
		return uQQ;
	}

	public void setuQQ(String uQQ) {
		this.uQQ = uQQ;
	}

}
