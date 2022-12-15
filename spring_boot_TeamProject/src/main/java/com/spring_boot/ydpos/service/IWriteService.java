package com.spring_boot.ydpos.service;

import com.spring_boot.ydpos.model.writeVO;

public interface IWriteService {

	public void insertwrite(writeVO vo) ; // 게시글 등록

	// 유저타입호출
	public String getUserType(String userId);
}