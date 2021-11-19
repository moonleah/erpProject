package com.ezds.erp.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezds.erp.dao.OutgoDAO;
import com.ezds.erp.service.OutgoService;
import com.ezds.erp.vo.OutgoVO;

@Service
public class OutgoServiceImpl implements OutgoService{

	@Autowired
	OutgoDAO outDao; 
	

	@Override
	public List<OutgoVO> getOutgoList() throws Exception {
		return outDao.getOutgoList();
	}

	

	
	

}
