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

}
