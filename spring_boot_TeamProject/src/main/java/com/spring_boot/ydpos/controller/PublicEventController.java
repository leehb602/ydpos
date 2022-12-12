package com.spring_boot.ydpos.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot.ydpos.model.PublicEventVO;
import com.spring_boot.ydpos.service.PublicEventService;

@Controller
public class PublicEventController {
	@Autowired
	PublicEventService service;
	
	

	//공공기관 게시판 열기
	@RequestMapping("/publicE/viewlistAllpublicEvent")
	public String viewlistAllpublicEvent(Model model) {
		ArrayList<PublicEventVO> PubliceventList = service.listAllPublicevent();
		model.addAttribute("PubliceventList",PubliceventList);
		return "publicE/publicEvent";
	}
	
	//공공기관 게시판 상세페이지
	@RequestMapping("/event_card/{ecardNo}")
	public String detailView(@PathVariable String ecardNo, Model model) { 
		PublicEventVO cdList = service.detailViewPublicE(ecardNo);	  
		model.addAttribute("cdList", cdList); 
		return "publicE/publicEventDetail";
	}
	
	
	
	
	
	
	
//글삭제	
//	@RequestMapping("/BoardDelete/{ecardNo}")
//	public String deleteBoard(@PathVariable String ecardNo) {
//		service.deleteBoard(ecardNo);
//		return "redirect:/publicE/viewlistAllpublicEvent";
//	}
//글수정	
//	@RequestMapping("/publeE/boardUpdateForm/{ecardNo}")
//	public String boardUpdateForm(@PathVariable String ecardNo,
//			  Model model) {
//		PublicEventVO cdList = service.detailViewPublicE(ecardNo);
//		model.addAttribute("cdList", cdList);	
//		return "publicE/boardUpdateForm";
//	}
//	
//	@RequestMapping("/publeE/updateBoard")
//	public String updateBoard(PublicEventVO cdList) {
//		service.updateBoard(cdList);
//		return "redirect:/publicE/viewlistAllpublicEvent";
//	}
	
	
}
