package com.spring_boot.ydpos.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class UserProfileVO {
	private String writeNo;
	private String userId;
	private String writeCategory;
	private String writeTitle;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date writeDate;

	public String getWriteNo() {
		return writeNo;
	}

	public void setWriteNo(String writeNo) {
		this.writeNo = writeNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
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

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}

}
