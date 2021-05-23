package com.laptrinhjavaweb.entity;


import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Table;

@Entity
@Table(name = "showdeal")
public class showDealentity extends BaseEntity {

	@Column(name = "mahd")
	private long mahd;
	
	@Column(name = "masp")
	private long masp;
	
	@Column(name = "soluong")
	private long soluong;

	public long getMahd() {
		return mahd;
	}

	public void setMahd(long mahd) {
		this.mahd = mahd;
	}

	public long getMasp() {
		return masp;
	}

	public void setMasp(long masp) {
		this.masp = masp;
	}

	public long getSoluong() {
		return soluong;
	}

	public void setSoluong(long soluong) {
		this.soluong = soluong;
	}
	
	
	
	
}
