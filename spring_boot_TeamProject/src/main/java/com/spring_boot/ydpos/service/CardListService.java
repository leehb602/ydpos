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
		return dao.cardSearch(keyword);
	}



	@Override
	public ArrayList<CardListVO> subSearch(String subKey) {
		return dao.subSearch(subKey);
	}



	@Override
	public CardListVO detailViewCard(int writeNo) {
		// TODO Auto-generated method stub
		return dao.detailViewCard(writeNo);
	}



	










	

















}
