package com.spring_boot.ydpos.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring_boot.ydpos.model.JoinCorporationVO;
import com.spring_boot.ydpos.model.JoinIndividualVO;
import com.spring_boot.ydpos.model.JoinPublicVO;
import com.spring_boot.ydpos.service.JoinService;

@Controller
public class JoinController {
	@Autowired
	JoinService service;
	
	// 로그인 메인
	@RequestMapping("/join/joinMain")
	public String joinMain() {
		return "join/joinMain";
	}
	
	// 각 가입목적별 페이지 이동
	@RequestMapping("/join/joinIndividualForm")
	public String joinIndividualForm() {
		return "join/joinIndividualForm";
	}
	
	@RequestMapping("/join/joinCorporationForm")
	public String joinCorporationForm() {
		return "join/joinCorporationForm";
	}
	
	@RequestMapping("/join/joinPublicForm")
	public String joinPublicForm() {
		return "join/joinPublicForm";
	}
	
	// 가입 목적별 회원가입
	@RequestMapping("/join/joinIndividual")
	public String joinIndividual(JoinIndividualVO vo,
								 @RequestParam("hp1") String userHp1,
								 @RequestParam("hp2") String userHp2,
								 @RequestParam("hp3") String userHp3,
								 @RequestParam("email") String email,
								 @RequestParam("emailAddress") String emailAddress) {
		vo.setUserHP(userHp1 + "-" + userHp2 + "-" + userHp3);
		vo.setUserEmail(email + "@" + emailAddress);
		service.joinIndividaul(vo);
		return "join/joinCompleteForm";
	}
	
	@RequestMapping("/join/joinCorporation")
	public String joinCorporation(JoinCorporationVO vo) {
		service.joinCorporation(vo);
		return "join/joinCompleteForm";
	}
	
	@RequestMapping("/join/joinPublic")
	public String joinPublic(JoinPublicVO vo,
							 @RequestParam("hp1") String userHp1,
							 @RequestParam("hp2") String userHp2,
							 @RequestParam("hp3") String userHp3) {
		vo.setUserHP(userHp1 + "-" + userHp2 + "-" + userHp3);
		service.joinPublic(vo);
		return "join/joinCompleteForm";
	}
	
	// 회원가입 완료 페이지에서 각각 이동
	@RequestMapping("/join/loginForm")
	public String loginForm() {
		return "join/loginForm";
	}
}
