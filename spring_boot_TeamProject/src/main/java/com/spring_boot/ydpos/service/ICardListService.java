package com.spring_boot.ydpos.service;



import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestParam;

import com.spring_boot.ydpos.model.CardListVO;


public interface ICardListService {
	public ArrayList<CardListVO> listAllCard();
	public ArrayList<CardListVO> cardSearch(String keyword);
	public ArrayList<CardListVO> subSearch(String subKey);
	public CardListVO detailViewCard(int writeNo);
}
