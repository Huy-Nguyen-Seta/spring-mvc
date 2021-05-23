package com.laptrinhjavaweb.dto;



public class NewDTO extends AbstractDTO<NewDTO> {
	
	private String title;
	private String thumbnail;
	private String shortDescription;
	private String content;
	private Long categoryId;
	private String categoryCode;
	
	private long giacuoi;
	
	public long getGiacuoi() {
		return giacuoi;
	}
	public void setGiacuoi(long l) {
		this.giacuoi = l;
	}
	private int gia;
	private int soluongmua;
	
	public int getSoluongmua() {
		return soluongmua;
	}
	public void setSoluongmua(int soluongmua) {
		this.soluongmua = soluongmua;
	}
	private String chieudai;
	
	
	private String chieurong;
	
	private String chatlieu;

	public String getChatlieu() {
		return chatlieu;
	}
	public void setChatlieu(String chatlieu) {
		this.chatlieu = chatlieu;
	}
	public int getGia() {
		return gia;
	}
	public void setGia(int gia) {
		this.gia = gia;
	}
	public String getChieudai() {
		return chieudai;
	}
	public void setChieudai(String chieudai) {
		this.chieudai = chieudai;
	}
	public String getChieurong() {
		return chieurong;
	}
	public void setChieurong(String chieurong) {
		this.chieurong = chieurong;
	}
	public int getSoluongton() {
		return soluongton;
	}
	public void setSoluongton(int soluongton) {
		this.soluongton = soluongton;
	}
	private int soluongton;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getShortDescription() {
		return shortDescription;
	}
	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Long getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategoryCode() {
		return categoryCode;
	}
	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}
}
