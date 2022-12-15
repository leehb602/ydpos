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
	public String showCardListAllView() {
		
		return "board/cardListView";
	}
	
	//게시글 전부
	@RequestMapping("/board/showAllResult")
	public String showAllResult(Model model) {
		ArrayList<CardListVO> showCardList = service.listAllCard();
		model.addAttribute("showCardList", showCardList);
		return "board/cardListResultView";
	}
	
	//게시글 서칭
	@RequestMapping("/board/showSearchResult")
	public String cardListSearch(@RequestParam String keyword,
												   Model model){
		// 서비스로 전송해서 DB 검색 결과 받아옴
		System.out.println(keyword);
		ArrayList<CardListVO> showCardList = service.cardSearch(keyword);
		model.addAttribute("showCardList", showCardList);
		return "board/cardListResultView";
	}

//	//필터 체크 박스 View
//	@RequestMapping("/board/showSearchResult")
//	public String subFilter (@RequestParam String subKey,
//			                                Model model) {
//		ArrayList<CardListVO> showCardList = service.subSearch(subKey);
//		model.addAttribute("showCardList", showCardList);
//		return "board/cardListResultView";
//	}
//	
	
	

	//bookmark 만들기 	(조회수)
	
	//Page 나누기
	
}
