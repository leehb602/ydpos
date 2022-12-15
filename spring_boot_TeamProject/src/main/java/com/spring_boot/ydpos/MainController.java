package com.spring_boot.ydpos;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot.ydpos.model.PublicEventVO;
import com.spring_boot.ydpos.service.PublicEventService;
import com.spring_boot.ydpos.service.UserService;
import com.spring_boot.ydpos.service.WriteService;


//MainController

@Controller
public class MainController {
	@Autowired //회원 로그인/아웃 관련
	UserService userService;
	
	@Autowired //공공기관 서비스 임시 연결
	PublicEventService publicService;
	
	@Autowired
	WriteService service;
	
	
	@RequestMapping("/")
	public String index(Model model) {
		//최신순으로 5개만 불러오는 메소드
		ArrayList<PublicEventVO> recentView = publicService.recentView();
		model.addAttribute("recentView", recentView);
		
		//가장 높은 조회수 순으로 3개 불러오는 메소드
		ArrayList<PublicEventVO> hitsView = publicService.hitsView();
		model.addAttribute("hitsView", hitsView);
		
		return "index";
	}
	
	@RequestMapping("/404")
	public String error() {
		return "error";
	}
	
	
	/*
	 * @RequestMapping("/writePage") public String writePage() { return "write"; }
	 */
	
	
	//지금 가장 인기의 게시글
	
	
	//사용자 기반 추천 게시글
	
	
	//가장 최신 게시글 (임시: 공공기관)
 
	
	//more 버튼 클릭 시 여행기 페이지로 이동 (index.jsp의 href에 매핑)
	
	
}