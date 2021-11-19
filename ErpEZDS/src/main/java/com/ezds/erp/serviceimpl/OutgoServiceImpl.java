package com.ezds.erp.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezds.erp.dao.IncomDAO;
import com.ezds.erp.service.OutgoService;
import com.ezds.erp.vo.IncomVO;

@Service
public class OutgoServiceImpl implements OutgoService{

	@Autowired
	IncomDAO icmDao; 
	
	@Override
	public List<IncomVO> getIncomList(IncomVO incomVO) throws Exception {
		
		return icmDao.getIncomList(incomVO);
	}

	

	
	

}
