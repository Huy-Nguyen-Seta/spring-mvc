package com.laptrinhjavaweb.dto;

public class CategoryDTO extends AbstractDTO<CategoryDTO> {
	
	private String name;
	private String code;
	private String thumbnail;
	private int soluongsp;
	
	public int getSoluongsp() {
		return soluongsp;
	}
	public void setSoluongsp(int soluongsp) {
		this.soluongsp = soluongsp;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	
}
