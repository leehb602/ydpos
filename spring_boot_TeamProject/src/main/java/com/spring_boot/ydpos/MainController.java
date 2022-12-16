package com.spring_boot.ydpos;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot.ydpos.model.MainWriteVO;
import com.spring_boot.ydpos.model.PublicEventVO;
import com.spring_boot.ydpos.service.MainWriteService;
import com.spring_boot.ydpos.service.PublicEventService;
import com.spring_boot.ydpos.service.UserService;


//MainController

@Controller
public class MainController {
	@Autowired //회원 로그인/아웃 관련
	UserService userService;
	
	@Autowired //공공기관 서비스 연결
	PublicEventService publicService;
	
	@Autowired //메인 연결
	MainWriteService mainService;
	
	/*
	 * @Autowired //글쓰기 상세 연결
	 */	
	
	
	@RequestMapping("/")
	public String index(Model model) {
		//최신순으로 5개만 불러오는 메소드
		ArrayList<MainWriteVO> recentView = mainService.recentView();
		model.addAttribute("recentView", recentView);
		
		//가장 높은 조회수 순으로 3개 불러오는 메소드
		ArrayList<MainWriteVO> hitsView = mainService.hitsView();
		model.addAttribute("hitsView", hitsView);
		
		//사용자에게 추천할 공공기관 게시글 3개 불러오는 메소드
		//PublicEventService에서 추가
		ArrayList<PublicEventVO> recentViewEvent = publicService.recentViewEvent();
		model.addAttribute("recentViewEvent", recentViewEvent);
		
		return "index";
	}
	
	@RequestMapping("/404")
	public String error() {
		return "error";
	}
	
	@RequestMapping("/write")
	public String write() {
		return "write";
	}
	
	//지금 가장 인기의 게시글(글쓰기 DB)
	
	
	//사용자에게 공공기관 축제 추천 게시글(공공기관 DB)
	
	
	//가장 최신 게시글(글쓰기 DB)
 
	
	//more 버튼 클릭 시 여행기 페이지로 이동 (index.jsp의 href에 매핑)
	
	
}