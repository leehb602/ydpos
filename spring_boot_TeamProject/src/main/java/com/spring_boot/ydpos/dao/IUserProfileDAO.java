package com.spring_boot.ydpos.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import com.spring_boot.ydpos.model.UserProfileVO;
import com.spring_boot.ydpos.model.UserVO;

public interface IUserProfileDAO {
	public ArrayList<UserProfileVO> userProfile(String userId);
	public String getUserName(String userId);
	public Date getUserJoinDate(String userId);
	public void userUpdate(UserVO vo);
	public String getUserId(int writeNo);
	public void writeDelete(int writeNo);
}
