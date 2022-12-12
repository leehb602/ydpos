package com.spring_boot.ydpos.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.spring_boot.ydpos.dao.IUserDAO;
import com.spring_boot.ydpos.model.UserVO;

@Service
public class UserService implements IUserService {
	@Autowired
	@Qualifier("IUserDAO")
	IUserDAO dao;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Override
	public void joinIndividaul(UserVO vo) {
		String encodedPassword = passwordEncoder.encode(vo.getUserPw());
		vo.setUserPw(encodedPassword);
		dao.joinIndividaul(vo);
	}

	@Override
	public void joinPublic(UserVO vo) {
		String encodedPassword = passwordEncoder.encode(vo.getUserPw());
		vo.setUserPw(encodedPassword);
		dao.joinPublic(vo);
	}

	@Override
	public void joinCorporation(UserVO vo) {
		String encodedPassword = passwordEncoder.encode(vo.getUserPw());
		vo.setUserPw(encodedPassword);
		dao.joinCorporation(vo);
	}

	@Override
	public String idCheck(String userId) {
		return dao.idCheck(userId);
	}

	@Override
	public String loginCheck(HashMap<String, Object> map) {
		String encodedPw = dao.loginCheck((String)map.get("id"));
		
		String result = "fail";
		if(encodedPw !=null && passwordEncoder.matches((String)map.get("pw"), encodedPw)) {
			result = "success";
		}
		
		return result;
	}

	@Override
	public String getUserName(HashMap<String, Object> map) {
		return dao.getUserName((String)map.get("id"));
	}

}
