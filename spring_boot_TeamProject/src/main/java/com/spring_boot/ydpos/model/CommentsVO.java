package com.spring_boot.ydpos.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class CommentsVO {
	private int mentNo;
	private String comment;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date mentDate;
	private String userId;
	private int writeNo;

	public int getMentNo() {
		return mentNo;
	}

	public void setMentNo(int mentNo) {
		this.mentNo = mentNo;
	}

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

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getWriteNo() {
		return writeNo;
	}

	public void setWriteNo(int writeNo) {
		this.writeNo = writeNo;
	}

}
