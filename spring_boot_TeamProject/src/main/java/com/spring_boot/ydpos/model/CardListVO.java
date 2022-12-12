package com.spring_boot.ydpos.model;

public class CardListVO {
	private int writeNo;
	private String writeImg;
	private String writeCategory;
	private String cardTitle;
	private String cardContent;
	private String cardBookmark;
	private String writeTime;
	private String userId;
	private String userImg;
	
	public int getWriteNo() {
		return writeNo;
	}
	public void setWriteNo(int writeNo) {
		this.writeNo = writeNo;
	}
	public String getWriteImg() {
		return writeImg;
	}
	public void setWriteImg(String writeImg) {
		this.writeImg = writeImg;
	}
	public String getWriteCategory() {
		return writeCategory;
	}
	public void setWriteCategory(String writeCategory) {
		this.writeCategory = writeCategory;
	}
	public String getCardTitle() {
		return cardTitle;
	}
	public void setCardTitle(String cardTitle) {
		this.cardTitle = cardTitle;
	}
	public String getCardContent() {
		return cardContent;
	}
	public void setCardContent(String cardContent) {
		this.cardContent = cardContent;
	}
	public String getCardBookmark() {
		return cardBookmark;
	}
	public void setCardBookmark(String cardBookmark) {
		this.cardBookmark = cardBookmark;
	}
	public String getWriteTime() {
		return writeTime;
	}
	public void setWriteTime(String writeTime) {
		this.writeTime = writeTime;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserImg() {
		return userImg;
	}
	public void setUserImg(String userImg) {
		this.userImg = userImg;
	}
	

	
}