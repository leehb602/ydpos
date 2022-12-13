package com.spring_boot.ydpos.controller;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	//게시글 서칭
	@RequestMapping("/board/showCardListAllView.keyword")
	public String cardListSearch(@RequestParam("keyword") String keyword,
												   Model model){
		// 서비스로 전송해서 DB 검색 결과 받아옴
		ArrayList<CardListVO> showCardList = service.cardSearch(keyword);
		model.addAttribute("showCardList", showCardList);
		return "redirect:board/cardListView";
	}
	
	//FilterBox 구현(checkBox)
	
	

	//bookmark 만들기 	(조회수)
	
	//Page 나누기
	
}
