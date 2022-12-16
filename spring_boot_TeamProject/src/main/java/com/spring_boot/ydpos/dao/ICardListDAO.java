package com.spring_boot.ydpos.dao;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestParam;

import com.spring_boot.ydpos.model.CardListVO;
import com.spring_boot.ydpos.model.PublicEventVO;

public interface ICardListDAO {
	public ArrayList<CardListVO> listAllCard();
	public ArrayList<CardListVO> cardSearch(String keyword);
	public ArrayList<CardListVO> subSearch(String subKey);
	public CardListVO detailViewCard(int writeNo);
}
