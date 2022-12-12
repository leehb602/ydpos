package com.spring_boot.ydpos.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring_boot.ydpos.model.PagingVO;
import com.spring_boot.ydpos.service.PagingService;

@Controller
public class PagingController {
	@Autowired
	PagingService service;
	
	@RequestMapping("/profile/paging")
	public String writeList(PagingVO vo,
							Model model,
							@RequestParam(value="nowPage", required=false)String nowPage ) {
		int total = service.countBoard();
		if (nowPage == null) {
			nowPage = "1";
		}
		
		vo = new PagingVO(total, Integer.parseInt(nowPage), 7);
		model.addAttribute("paging", vo);
		model.addAttribute("viewAll", service.selectBoard(vo));
		return "profile/userProfile";
	}
}
