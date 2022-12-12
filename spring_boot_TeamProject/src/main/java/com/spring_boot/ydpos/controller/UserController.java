package com.spring_boot.ydpos.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_boot.ydpos.model.UserVO;
import com.spring_boot.ydpos.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService service;
	
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
	
	// 가입 목적별 회원가입 - 개인회원
	@RequestMapping("/join/joinIndividual")
	public String joinIndividual(UserVO vo,
								 @RequestParam("hp1") String userHp1,
								 @RequestParam("hp2") String userHp2,
								 @RequestParam("hp3") String userHp3,
								 @RequestParam("email") String email,
								 @RequestParam("emailAddress") String emailAddress,
								 Model model) {
		vo.setUserHP(userHp1 + "-" + userHp2 + "-" + userHp3);
		vo.setUserEmail(email + "@" + emailAddress);
		vo.setUserType("individual");
		service.joinIndividaul(vo);
		model.addAttribute("userName", vo.getUserName());
		return "join/joinCompleteForm";
	}
	
	// 회원가입 - 법인회원
	@RequestMapping("/join/joinCorporation")
	public String joinCorporation(UserVO vo, Model model) {
		vo.setUserType("corporation");
		service.joinCorporation(vo);
		model.addAttribute("userName", vo.getUserName());
		return "join/joinCompleteForm";
	}
	
	// 회원가입 - 공공기관
	@RequestMapping("/join/joinPublic")
	public String joinPublic(UserVO vo,
							 @RequestParam("hp1") String userHp1,
							 @RequestParam("hp2") String userHp2,
							 @RequestParam("hp3") String userHp3,
							 Model model) {
		vo.setUserHP(userHp1 + "-" + userHp2 + "-" + userHp3);
		vo.setUserType("public");
		service.joinPublic(vo);
		model.addAttribute("userName", vo.getUserName());
		return "join/joinCompleteForm";
	}
	
	// ID 중복확인
	@ResponseBody
	@RequestMapping("/join/idCheck")
	public String idCheck(@RequestParam("userId") String userId) {
		String answer = service.idCheck(userId);
		String result ="";
		if(answer == null) {
			result="success";
		}else {
			result="fail";
		}
		
		return result;
	}
	
	// 로그인 폼으로 이동
	@RequestMapping("/user/loginForm")
	public String loginForm() {
		return "login/loginForm";
	}
	
	// 로그인 시 알고리즘
	@ResponseBody
	@RequestMapping("/user/login")
	public String loginCheck(@RequestParam HashMap<String, Object> param, HttpSession session) {
		String result = service.loginCheck(param);
		
		if(result.equals("success")) {
			session.setAttribute("sid", param.get("id"));
			session.setAttribute("suserName", service.getUserName(param));
		}
		
		return result;
	}
	
	// 로그아웃
	@RequestMapping("/user/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
