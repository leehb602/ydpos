package com.spring_boot.ydpos.service;

import java.util.ArrayList;

import com.spring_boot.ydpos.model.PublicEventVO;

public interface IPublicEventService {
	public ArrayList<PublicEventVO> listAllPublicevent();
	public PublicEventVO detailViewPublicE(String ecardNo);

	
	
	
//	public void deleteBoard(String ecardNo); 
//	public void updateBoard(PublicEventVO cdList);
}
