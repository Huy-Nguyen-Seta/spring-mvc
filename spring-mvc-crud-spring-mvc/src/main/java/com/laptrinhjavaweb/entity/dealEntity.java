package com.laptrinhjavaweb.entity;


import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Table;

@Entity
@Table(name = "deal")
public class dealEntity extends BaseEntity {

	
	
	@Column(name = "makh")
	private long makh;

	

	public long getMakh() {
		return makh;
	}

	public void setMakh(long makh) {
		this.makh = makh;
	}

	@Column(name = "trangthai")
	private long tt;



	public long getTt() {
		return tt;
	}

	public void setTt(long tt) {
		this.tt = tt;
	}

	

	
}
