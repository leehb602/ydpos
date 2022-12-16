package com.spring_boot.ydpos.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot.ydpos.dao.IMainWriteDAO;
import com.spring_boot.ydpos.model.MainWriteVO;

@Service
public class MainWriteService implements IMainWriteService {
	@Autowired
	@Qualifier("IMainWriteDAO")
	IMainWriteDAO dao;
	
	@Override
	public ArrayList<MainWriteVO> recentView() {
		return dao.recentView();
	}

	@Override
	public ArrayList<MainWriteVO> hitsView() {
		return dao.hitsView();
	}

}
