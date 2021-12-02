package com.ezds.erp.service;

import java.util.List;

import com.ezds.erp.vo.IncomVO;
import com.ezds.erp.vo.OutgoVO;
import com.ezds.erp.vo.UserVO;

public interface OutgoService {

	List<OutgoVO> getOutgoList() throws Exception;

	List<OutgoVO> getOutDetailList(Integer prdNo) throws Exception;
	
	
}
