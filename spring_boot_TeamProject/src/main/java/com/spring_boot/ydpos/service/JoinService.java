package com.spring_boot.ydpos.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.spring_boot.ydpos.dao.IJoinDAO;
import com.spring_boot.ydpos.model.JoinCorporationVO;
import com.spring_boot.ydpos.model.JoinIndividualVO;
import com.spring_boot.ydpos.model.JoinPublicVO;

@Service
public class JoinService implements IJoinService {
	@Autowired
	@Qualifier("IJoinDAO")
	IJoinDAO dao;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Override
	public void joinIndividaul(JoinIndividualVO vo) {
		String encodedPassword = passwordEncoder.encode(vo.getUserPw());
		vo.setUserPw(encodedPassword);
		dao.joinIndividaul(vo);
	}

	@Override
	public void joinPublic(JoinPublicVO vo) {
		String encodedPassword = passwordEncoder.encode(vo.getUserPw());
		vo.setUserPw(encodedPassword);
		dao.joinPublic(vo);
	}

	@Override
	public void joinCorporation(JoinCorporationVO vo) {
		String encodedPassword = passwordEncoder.encode(vo.getUserPw());
		vo.setUserPw(encodedPassword);
		dao.joinCorporation(vo);
	}

}
