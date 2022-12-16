package com.spring_boot.ydpos.service;

import java.util.ArrayList;

import com.spring_boot.ydpos.model.PublicEventVO;
import com.spring_boot.ydpos.model.writeVO;

public interface IWriteService {

	public void insertwrite(writeVO vo) ; // 게시글 등록

	//최신순으로 불러오는 메소드
	public ArrayList<writeVO> recentView();
	//가장 높은 조회수 순으로 불러오는 메소드
	public ArrayList<writeVO> hitsView();
	
	// 유저타입 호출
	public String getUserType(String userId);
	
}