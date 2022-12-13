package com.spring_boot.ydpos.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot.ydpos.dao.ICardListDAO;
import com.spring_boot.ydpos.model.CardListVO;


@Service
public class CardListService implements ICardListService {
	@Autowired
	@Qualifier("ICardListDAO")
	ICardListDAO dao;
	
	
	
	@Override
	public ArrayList<CardListVO> listAllCard() {
		return dao.listAllCard();
	}



	@Override
	public ArrayList<CardListVO> cardSearch(String keyword) {
		// TODO Auto-generated method stub
		return dao.cardSearch(keyword);
	}















}
