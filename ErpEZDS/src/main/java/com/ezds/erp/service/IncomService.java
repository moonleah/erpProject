package com.ezds.erp.service;

import java.util.List;

import com.ezds.erp.vo.IncomVO;
import com.ezds.erp.vo.UserVO;

public interface IncomService {

	List<IncomVO> getIncomList(IncomVO incomVO) throws Exception;
	List<IncomVO> getIcmDetailList(Integer prdNo) throws Exception;
	
	
}
