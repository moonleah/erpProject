package com.ezds.erp.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezds.erp.dao.CompanyDAO;
import com.ezds.erp.service.CompanyService;
import com.ezds.erp.vo.CompanyVO;

@Service
public class CompanyServiceImpl implements CompanyService{

	@Autowired
	CompanyDAO companyDao;
	
	@Override
	public String selectCompany() throws Exception {
		return companyDao.Select();
	}

	@Override
	public List<CompanyVO>selectList() throws Exception {
		return companyDao.SelectAll();
	}

	@Override
	public void companyInsert(CompanyVO companyVO) throws Exception {
		companyDao.companyInsert(companyVO);		
	}

	@Override
	public void companyUpdate(CompanyVO companyVO) throws Exception {
		companyDao.companyUpdate(companyVO);
	}

	@Override
	public void companyDelete(CompanyVO companyVO) throws Exception {
		companyDao.companyDelete(companyVO);
		
	}

	@Override
	public CompanyVO getCompanyOne(CompanyVO companyVO) throws Exception {
		return companyDao.getCompanyOne(companyVO);
	}

	@Override
	public CompanyVO getCompanyOneName(String orderCompany) throws Exception {
		return companyDao.getCompanyOneName(orderCompany);
	}
	
	

}
