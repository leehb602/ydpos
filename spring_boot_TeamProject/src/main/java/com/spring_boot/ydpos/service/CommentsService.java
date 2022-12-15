package com.spring_boot.ydpos.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot.ydpos.dao.ICommentsDAO;
import com.spring_boot.ydpos.model.CommentsVO;

@Service
public class CommentsService implements ICommentsService{
	@Autowired
	@Qualifier("ICommentsDAO")
	ICommentsDAO dao;

	@Override
	public void insertComments(CommentsVO vo) {
		dao.insertComments(vo);
		
	}

	@Override
	public ArrayList<CommentsVO> getCommentList(int writeNo) {
		return dao.getCommentList(writeNo);
	}

	@Override
	public void deleteComments(String mentNo) {
		dao.deleteComments(mentNo);
	}	
	
}
