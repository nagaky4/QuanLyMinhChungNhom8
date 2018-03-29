package com.quypt.pack.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="capminhchung")
public class CapMinhChung {

	@Id
	@Column(name = "maCap")
	private String maCap;
	
	@Column(name = "tenCap")
	private String tenCap;
	
	@Column(name = "maLoaiCap")
	private String maLoaiCap;

	public CapMinhChung() {
		super();
	}

	public CapMinhChung(String maCap, String tenCap, String maLoaiCap) {
		super();
		this.maCap = maCap;
		this.tenCap = tenCap;
		this.maLoaiCap = maLoaiCap;
	}

	public String getMaCap() {
		return maCap;
	}

	public void setMaCap(String maCap) {
		this.maCap = maCap;
	}

	public String getTenCap() {
		return tenCap;
	}

	public void setTenCap(String tenCap) {
		this.tenCap = tenCap;
	}

	public String getMaLoaiCap() {
		return maLoaiCap;
	}

	public void setMaLoaiCap(String maLoaiCap) {
		this.maLoaiCap = maLoaiCap;
	}
	
	
}
