package com.spring_boot.ydpos.service;

import java.util.HashMap;

import com.spring_boot.ydpos.model.UserVO;

public interface IUserService {
	public void joinIndividaul(UserVO vo);
	public void joinPublic(UserVO vo);
	public void joinCorporation(UserVO vo);
	public String idCheck(String userId);
	public String loginCheck(HashMap<String, Object> map);
	public String getUserName(HashMap<String, Object> map);
}
