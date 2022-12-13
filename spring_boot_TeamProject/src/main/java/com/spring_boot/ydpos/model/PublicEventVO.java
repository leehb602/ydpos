package com.spring_boot.ydpos.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class PublicEventVO {
	private String ecardNo;
	private String ecardArea;
	private String ecardImgMain;
	private String ecardImgDetail;
	private String ecardTitle;
	private String ecardSubTitle;
	private String ecardText;
	private String ecardLink;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date ecardDate;
	private String userId;
	private String ecardview;
	private String userImg;
	public String getEcardNo() {
		return ecardNo;
	}
	public void setEcardNo(String ecardNo) {
		this.ecardNo = ecardNo;
	}
	public String getEcardArea() {
		return ecardArea;
	}
	public void setEcardArea(String ecardArea) {
		this.ecardArea = ecardArea;
	}
	public String getEcardImgMain() {
		return ecardImgMain;
	}
	public void setEcardImgMain(String ecardImgMain) {
		this.ecardImgMain = ecardImgMain;
	}
	public String getEcardImgDetail() {
		return ecardImgDetail;
	}
	public void setEcardImgDetail(String ecardImgDetail) {
		this.ecardImgDetail = ecardImgDetail;
	}
	public String getEcardTitle() {
		return ecardTitle;
	}
	public void setEcardTitle(String ecardTitle) {
		this.ecardTitle = ecardTitle;
	}
	public String getEcardSubTitle() {
		return ecardSubTitle;
	}
	public void setEcardSubTitle(String ecardSubTitle) {
		this.ecardSubTitle = ecardSubTitle;
	}
	public String getEcardText() {
		return ecardText;
	}
	public void setEcardText(String ecardText) {
		this.ecardText = ecardText;
	}
	public String getEcardLink() {
		return ecardLink;
	}
	public void setEcardLink(String ecardLink) {
		this.ecardLink = ecardLink;
	}
	public Date getEcardDate() {
		return ecardDate;
	}
	public void setEcardDate(Date ecardDate) {
		this.ecardDate = ecardDate;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getEcardview() {
		return ecardview;
	}
	public void setEcardview(String ecardview) {
		this.ecardview = ecardview;
	}
	public String getUserImg() {
		return userImg;
	}
	public void setUserImg(String userImg) {
		this.userImg = userImg;
	}
	
	
	
}
