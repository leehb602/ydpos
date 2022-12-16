package com.spring_boot.ydpos.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class MainWriteVO {
	private int writeNo;
	private String writeImg;
	private String writeCategory;
	private String writeTitle;
	private String editordata;
	private String cardBookmark;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date writeDate;
	private String userId;
	private String userImg;
	private int writeHits;
	private String fileName;

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

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

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
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

	public int getWriteHits() {
		return writeHits;
	}

	public void setWriteHits(int writeHits) {
		this.writeHits = writeHits;
	}
}
