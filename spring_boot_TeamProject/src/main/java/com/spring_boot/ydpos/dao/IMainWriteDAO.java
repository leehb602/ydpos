package com.spring_boot.ydpos.dao;

import java.util.ArrayList;

import com.spring_boot.ydpos.model.MainWriteVO;

public interface IMainWriteDAO {
	//최신순으로 5개 불러오는 메서드
	public ArrayList<MainWriteVO> recentView();
	//가장 높은 조회수 순으로 불러오는 메소드
	public ArrayList<MainWriteVO> hitsView();
}
