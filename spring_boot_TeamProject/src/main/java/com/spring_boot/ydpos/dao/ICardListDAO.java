package com.spring_boot.ydpos.dao;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestParam;

import com.spring_boot.ydpos.model.CardListVO;

public interface ICardListDAO {
	public ArrayList<CardListVO> listAllCard();
	public ArrayList<CardListVO> cardSearch(@RequestParam("keyword") String keyword);
}
