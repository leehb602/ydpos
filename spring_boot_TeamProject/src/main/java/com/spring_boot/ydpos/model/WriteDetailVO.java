package com.spring_boot.ydpos.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class WriteDetailVO {
	private String userName;
	private String userImg;
	private String userld;
	private String userPw;
	private String userType;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date writeDate;
	private String bookMark;
	private String like;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserImg() {
		return userImg;
	}
	public void setUserImg(String userImg) {
		this.userImg = userImg;
	}
	public String getUserld() {
		return userld;
	}
	public void setUserld(String userld) {
		this.userld = userld;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	public String getBookMark() {
		return bookMark;
	}
	public void setBookMark(String bookMark) {
		this.bookMark = bookMark;
	}
	public String getLike() {
		return like;
	}
	public void setLike(String like) {
		this.like = like;
	}
	
}
