package com.spring_boot.ydpos.dao;

import java.util.ArrayList;

import com.spring_boot.ydpos.model.PublicEventVO;

public interface IPublicEventDAO {
	public ArrayList<PublicEventVO> listAllPublicevent();
	public PublicEventVO detailViewPublicE(String ecardNo);
	
	//최신순으로 불러오는 메소드
	public ArrayList<PublicEventVO> recentView();
	//가장 높은 조회수 순으로 불러오는 메소드
	public ArrayList<PublicEventVO> hitsView();
	
	
	
//	public void deleteBoard(String ecardNo); 
//	public void updateBoard(PublicEventVO cdList);
}
