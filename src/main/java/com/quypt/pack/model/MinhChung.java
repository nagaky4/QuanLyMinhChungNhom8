package com.quypt.pack.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="minhchung")
public class MinhChung {
	
	@Id
	@Column(name="maMC")
	private String maMC;

	@Column(name="tenMC")
	private String tenMC;
	
	@Column(name="noiDung")
	private String noiDung;
	
	@Column(name="maLoaiMC")
	private String maLoaiMC;
	
	@Column(name="maCapMC")
	private String maCapMC;
	
	@Column(name="hinhAnhMC")
	private String hinhAnhMC;
	
	@Column(name="hinhAnhMoTa")
	private String hinhAnhMoTa;

	public MinhChung() {
		super();
	}

	public MinhChung(String maMC, String tenMC, String noiDung, String maLoaiMC, String maCapMC, String hinhAnhMC,
			String hinhAnhMoTa) {
		super();
		this.maMC = maMC;
		this.tenMC = tenMC;
		this.noiDung = noiDung;
		this.maLoaiMC = maLoaiMC;
		this.maCapMC = maCapMC;
		this.hinhAnhMC = hinhAnhMC;
		this.hinhAnhMoTa = hinhAnhMoTa;
	}

	public String getMaMC() {
		return maMC;
	}

	public void setMaMC(String maMC) {
		this.maMC = maMC;
	}

	public String getTenMC() {
		return tenMC;
	}

	public void setTenMC(String tenMC) {
		this.tenMC = tenMC;
	}

	public String getNoiDung() {
		return noiDung;
	}

	public void setNoiDung(String noiDung) {
		this.noiDung = noiDung;
	}

	public String getMaLoaiMC() {
		return maLoaiMC;
	}

	public void setMaLoaiMC(String maLoaiMC) {
		this.maLoaiMC = maLoaiMC;
	}

	public String getMaCapMC() {
		return maCapMC;
	}

	public void setMaCapMC(String maCapMC) {
		this.maCapMC = maCapMC;
	}

	public String getHinhAnhMC() {
		return hinhAnhMC;
	}

	public void setHinhAnhMC(String hinhAnhMC) {
		this.hinhAnhMC = hinhAnhMC;
	}

	public String getHinhAnhMoTa() {
		return hinhAnhMoTa;
	}

	public void setHinhAnhMoTa(String hinhAnhMoTa) {
		this.hinhAnhMoTa = hinhAnhMoTa;
	}
	
	

}
