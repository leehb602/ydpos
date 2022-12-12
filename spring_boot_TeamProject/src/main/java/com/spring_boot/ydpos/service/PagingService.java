package com.spring_boot.ydpos.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot.ydpos.dao.IPagingDAO;
import com.spring_boot.ydpos.model.PagingVO;
import com.spring_boot.ydpos.model.UserProfileVO;

@Service
public class PagingService implements IPagingService {
	@Autowired
	@Qualifier("IPagingDAO")
	IPagingDAO dao;
	

	@Override
	public int countBoard() {
		return dao.countBoard();
	}

	@Override
	public ArrayList<UserProfileVO> selectBoard(PagingVO vo) {
		return dao.selectBoard(vo);
	}

}
