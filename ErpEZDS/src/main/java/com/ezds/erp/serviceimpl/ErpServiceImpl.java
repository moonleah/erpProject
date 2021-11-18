package com.ezds.erp.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezds.erp.dao.ErpDAO;
import com.ezds.erp.service.ErpService;
import com.ezds.erp.vo.CompanyVO;

@Service
public class ErpServiceImpl implements ErpService{

	@Autowired
	ErpDAO erpDao;
	
	@Override
	public String selectCompany() throws Exception {
		return erpDao.Select();
	}

	@Override
	public List<CompanyVO>selectList() throws Exception {
		// TODO Auto-generated method stub
		return erpDao.SelectAll();
	}
	
	

}
