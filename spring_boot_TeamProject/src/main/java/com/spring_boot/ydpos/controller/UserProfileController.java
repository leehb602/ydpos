package com.spring_boot.ydpos.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring_boot.ydpos.model.UserProfileVO;
import com.spring_boot.ydpos.model.UserVO;
import com.spring_boot.ydpos.service.UserProfileService;

@Controller
public class UserProfileController {
	@Autowired
	UserProfileService service;
	
	// 유저 프로필 매핑
	@RequestMapping("/profile/userProfile/{userId}")
	public String userProfile(@PathVariable String userId, Model model) {
		ArrayList<UserProfileVO> userList = service.userProfile(userId);
		model.addAttribute("userList", userList);
		model.addAttribute("userName", service.getUserName(userId));
		model.addAttribute("userJoinDate", service.getUserJoinDate(userId));
		return "profile/userProfile";
	}
	
	// 회원정보 수정폼으로 이동
	@RequestMapping("/profile/userUpdateForm/{userId}")
	public String userUpdateForm(@PathVariable String userId, Model model) {
		model.addAttribute("userId", userId);
		return "profile/userUpdateForm";
	}
	
	// 회원정보 수정
	@RequestMapping("/profile/userUpdate")
	public String userUpdate(UserVO vo,
							 @RequestParam("hp1") String userHp1,
							 @RequestParam("hp2") String userHp2,
							 @RequestParam("hp3") String userHp3,
							 @RequestParam("email") String email,
							 @RequestParam("emailAddress") String emailAddress) {
		vo.setUserHP(userHp1 + "-" + userHp2 + "-" + userHp3);
		vo.setUserEmail(email + "@" + emailAddress);
		service.userUpdate(vo);
		return "/";
	}
	
	// 게시글 삭제
	@RequestMapping("/write/writeDelete/{writeNo}")
	public String writeDelete(@PathVariable int writeNo) {
		String userId = service.getUserId(writeNo);
		service.writeDelete(writeNo);
		return "redirect:/profile/userProfile/"+userId;
	}
}
