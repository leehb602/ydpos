package com.spring_boot.ydpos.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class UserProfileVO {
	// 작성한 글
	private int writeNo;
	private String userId;
	private String writeCategory;
	private String writeTitle;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date writeDate;
	
	// 작성한 댓글
	private String comment;
	private Date mentDate;

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Date getMentDate() {
		return mentDate;
	}

	public void setMentDate(Date mentDate) {
		this.mentDate = mentDate;
	}

	public int getWriteNo() {
		return writeNo;
	}

	public void setWriteNo(int writeNo) {
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
