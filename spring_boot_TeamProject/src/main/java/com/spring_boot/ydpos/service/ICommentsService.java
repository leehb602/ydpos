package com.spring_boot.ydpos.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_boot.ydpos.model.CommentsVO;

public interface ICommentsService {
	// 댓글 등록
	public void insertComments(CommentsVO vo);
	
	// 댓글 목록 호출
	public ArrayList<CommentsVO> getCommentList(int writeNo);
	
	// 댓글 삭제
	public void deleteComments(String mentNo);
}
