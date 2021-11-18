package com.ezds.erp.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezds.erp.dao.IncomDAO;
import com.ezds.erp.service.IncomService;
import com.ezds.erp.vo.IncomVO;

@Service
public class IncomServiceImpl implements IncomService{

	@Autowired
	IncomDAO icmDao; 
	
	@Override
	public List<IncomVO> getIncomList(IncomVO incomVO) throws Exception {
		
		return icmDao.getIncomList(incomVO);
	}

	

	
	

}
