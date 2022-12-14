package com.spring_boot.ydpos.dao;

import java.util.ArrayList;

import com.spring_boot.ydpos.model.PublicEventVO;

public interface IPublicEventDAO {
	public ArrayList<PublicEventVO> listAllPublicevent();
	public PublicEventVO detailViewPublicE(String ecardNo);
	public void viewCount(PublicEventVO vo);
	
	
	
}
