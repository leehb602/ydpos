package com.spring_boot.ydpos.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.spring_boot.ydpos.dao.IUserProfileDAO;
import com.spring_boot.ydpos.model.UserProfileVO;
import com.spring_boot.ydpos.model.UserVO;

@Service
public class UserProfileService implements IUserProfileService {
	@Autowired
	@Qualifier("IUserProfileDAO")
	IUserProfileDAO dao;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Override
	public ArrayList<UserProfileVO> userProfile(String userId) {
		return dao.userProfile(userId);
	}

	@Override
	public String getUserName(String userId) {
		return dao.getUserName(userId);
	}

	@Override
	public Date getUserJoinDate(String userId) {
		return dao.getUserJoinDate(userId);
	}

	@Override
	public void userUpdate(UserVO vo) {
		String encodedPassword = passwordEncoder.encode(vo.getUserPw());
		vo.setUserPw(encodedPassword);
		dao.userUpdate(vo);	
	}

	@Override
	public void writeDelete(int writeNo) {
		dao.writeDelete(writeNo);
	}

	@Override
	public String getUserId(int writeNo) {
		return dao.getUserId(writeNo);
	}

	@Override
	public ArrayList<UserProfileVO> userMent(String userId) {
		return dao.userMent(userId);
	}
	
}
