package com.spring_boot.ydpos.service;



import java.util.ArrayList;

import com.spring_boot.ydpos.model.CardListVO;


public interface ICardListService {
	public ArrayList<CardListVO> listAllCard();
	public CardListVO detailViewCard(String ecardNo);
}
