package com.spring_boot.ydpos.dao;


import com.spring_boot.ydpos.model.UserVO;

public interface IUserDAO {
	public void joinIndividaul(UserVO vo);
	public void joinPublic(UserVO vo);
	public void joinCorporation(UserVO vo);
	public String idCheck(String userId);
	public String loginCheck(String id);
	public String getUserName(String id);
}
