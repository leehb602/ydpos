package com.spring_boot.ydpos.model;

import java.util.Date;

public class writeVO {

	private int writeNo;
	private String writeTitle;

	private String writeCategory;

	private String editordata;
	private Date writeDate;
	private int writeHits;
	private String userId;
	private String userType;
	private String fileName;
	private String filePath;

	public int getWriteNo() {
		return writeNo;
	}

	public void setWriteNo(int writeNo) {
		this.writeNo = writeNo;
	}

	public String getWriteTitle() {
		return writeTitle;
	}

	public void setWriteTitle(String writeTitle) {
		this.writeTitle = writeTitle;
	}

	public String getWriteCategory() {
		return writeCategory;
	}

	public void setWriteCategory(String writeCategory) {
		this.writeCategory = writeCategory;
	}

	public String getEditordata() {
		return editordata;
	}

	public void setEditordata(String editordata) {
		this.editordata = editordata;
	}

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}

	public int getWriteHits() {
		return writeHits;
	}

	public void setWriteHits(int writeHits) {
		this.writeHits = writeHits;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

}
