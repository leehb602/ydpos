package com.spring_boot.ydpos.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring_boot.ydpos.model.CommentsVO;
import com.spring_boot.ydpos.service.CommentsService;

@Controller
public class CommentsController {
	@Autowired
	CommentsService service;
	
	@RequestMapping("/imsy")
	public String comment() {
		return "comments/comments";
	}
	
	@RequestMapping("/comments/loading")
	public String loading(@RequestParam int writeNo, Model model) {
		ArrayList<CommentsVO> mentList = service.getCommentList(writeNo);
		model.addAttribute("mentList", mentList);
		return "comments/commentsResultView";
	}
	
	@RequestMapping("/comments/commentProcessing")
	public String commentProcessing(@RequestParam String userId,
									@RequestParam String comment,
									@RequestParam int writeNo,
									CommentsVO vo,
						   			Model model) {
		vo.setComment(comment);
		vo.setUserId(userId);
		vo.setWriteNo(writeNo);
		service.insertComments(vo);
		ArrayList<CommentsVO> mentList = service.getCommentList(writeNo);
		model.addAttribute("mentList", mentList);
		return "comments/commentsResultView";
	}
}
