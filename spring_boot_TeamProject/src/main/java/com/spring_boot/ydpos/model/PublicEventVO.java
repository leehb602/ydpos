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
	private String userNamePublic;
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
	public String getUserNamePublic() {
		return userNamePublic;
	}
	public void setUserNamePublic(String userNamePublic) {
		this.userNamePublic = userNamePublic;
	}
	
}
