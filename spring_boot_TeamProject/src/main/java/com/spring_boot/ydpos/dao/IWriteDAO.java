package com.spring_boot.ydpos.dao;

import com.spring_boot.ydpos.model.writeVO;

public interface IWriteDAO {

	public void insertwrite(writeVO vo); // 게시글 등록

	// 유저타입호출
	public String getUserType(String userId);

}
