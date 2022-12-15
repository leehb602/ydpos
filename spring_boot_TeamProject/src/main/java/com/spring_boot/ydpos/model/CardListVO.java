package com.spring_boot.ydpos.model;

public class CardListVO {
	private int writeNo;
	private String writeImg;
	private String writeCategory;
	private String writeTitle;
	private String editordata;
	private String cardBookmark;
	private String writeDate;
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
	public String getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}
	public String getWriteTitle() {
		return writeTitle;
	}
	public void setWriteTitle(String writeTitle) {
		this.writeTitle = writeTitle;
	}
	public String getEditordata() {
		return editordata;
	}
	public void setEditordata(String editordata) {
		this.editordata = editordata;
	}
	public String getCardBookmark() {
		return cardBookmark;
	}
	public void setCardBookmark(String cardBookmark) {
		this.cardBookmark = cardBookmark;
	}
	
	public String getWritedate() {
		return writeDate;
	}
	public void setWritedate(String writedate) {
		this.writeDate = writedate;
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