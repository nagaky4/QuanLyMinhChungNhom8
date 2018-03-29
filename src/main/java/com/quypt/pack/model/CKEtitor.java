package com.quypt.pack.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name="data")
public class CKEtitor {

	@Id
	@GeneratedValue
	@Column(name="id")
	private int id;
	
	@Column(name="mydata")
	private String mydata;
	
	public CKEtitor() {
		super();
	}

	public CKEtitor(int id, String mydata) {
		super();
		this.id = id;
		this.mydata = mydata;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMydata() {
		return mydata;
	}

	public void setMydata(String mydata) {
		this.mydata = mydata;
	}
	
}
