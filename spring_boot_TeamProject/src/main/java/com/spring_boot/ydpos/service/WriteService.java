package com.spring_boot.ydpos.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot.ydpos.dao.IWriteDAO;
import com.spring_boot.ydpos.model.writeVO;

@Service
public class WriteService implements IWriteService {
	 
	@Autowired
	@Qualifier("IWriteDAO")
	IWriteDAO dao;
	
	
	

	@Override
	public void insertwrite(writeVO vo)  {
		dao.insertwrite(vo);

	}




	@Override
	public String getUserType(String userId) {
		return dao.getUserType(userId);
	}



	}

	



