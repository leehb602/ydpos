package com.spring_boot.ydpos.dao;

import com.spring_boot.ydpos.model.JoinCorporationVO;
import com.spring_boot.ydpos.model.JoinIndividualVO;
import com.spring_boot.ydpos.model.JoinPublicVO;

public interface IJoinDAO {
	public void joinIndividaul(JoinIndividualVO vo);
	public void joinPublic(JoinPublicVO vo);
	public void joinCorporation(JoinCorporationVO vo);
}
