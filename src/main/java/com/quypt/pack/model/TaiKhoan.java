package com.quypt.pack.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name="taikhoan")
public class TaiKhoan {

	@Id
	@Column(name="id")
	@GeneratedValue
	private int id;
	
	@Column(name="userName")
	private String userName;
	
	@Column(name="passWord")
	private String passWord;
	
	public TaiKhoan() {
		super();
	}

	public TaiKhoan(int id, String userName, String passWord) {
		super();
		this.id = id;
		this.userName = userName;
		this.passWord = passWord;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	
}
