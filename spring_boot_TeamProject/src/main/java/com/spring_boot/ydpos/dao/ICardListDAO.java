package com.spring_boot.ydpos.dao;

import java.util.ArrayList;

import com.spring_boot.ydpos.model.CardListVO;

public interface ICardListDAO {
	public ArrayList<CardListVO> listAllCard();
	public CardListVO detailViewCard(String ecardNo);
}
