package com.spring_boot.ydpos.controller;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot.ydpos.model.CardListVO;
import com.spring_boot.ydpos.service.CardListService;


@Controller
public class CardListController {
	@Autowired
	CardListService service;
	
	//여행기 불러오기
	@RequestMapping("/board/showCardListAllView")
	public String showCardListAllView(Model model) {
		ArrayList<CardListVO> showCardList = service.listAllCard();
		model.addAttribute("showCardList", showCardList);
		return "board/cardListView";
	}
	
	
	//bookmark 만들기 	(조회수,
	
	//게시글 서칭
	
	//Page 나누기
	
}
