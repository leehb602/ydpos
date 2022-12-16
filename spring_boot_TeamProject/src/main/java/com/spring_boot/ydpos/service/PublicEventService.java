package com.spring_boot.ydpos.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot.ydpos.dao.IPublicEventDAO;
import com.spring_boot.ydpos.model.PublicEventVO;

@Service
public class PublicEventService implements IPublicEventService {
	
	@Autowired
	@Qualifier("IPublicEventDAO")
	IPublicEventDAO dao;
	
	
	@Override
	public ArrayList<PublicEventVO> listAllPublicevent() {
		
		return dao.listAllPublicevent();
	}

	@Override
	public PublicEventVO detailViewPublicE(String ecardNo) {
		
		return dao.detailViewPublicE(ecardNo);
	}

	//최신순으로 3개 출력하는 메서드 오버라이드
	@Override
	public ArrayList<PublicEventVO> recentViewEvent() {
		return dao.recentViewEvent();
	}

	//가장 높은 조회수 순으로 불러오는 메소드 오버라이드
	/*
	 * @Override public ArrayList<PublicEventVO> hitsView() { return dao.hitsView();
	 * }
	 */
	


}
