package com.ezds.erp.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ezds.erp.mapper.CompanyMapper;
import com.ezds.erp.vo.CompanyVO;

@Component
public class CompanyDAO {
	
	@Autowired
	private CompanyMapper mapper;
	

	
	public String Select() throws Exception {
		return mapper.selectCompany();
	}

	public List<CompanyVO> SelectAll() throws Exception {
		return mapper.selectAll();
	}

	public void companyInsert(CompanyVO companyVO) throws Exception {
		mapper.companyInsert(companyVO);
	}

	public void companyUpdate(CompanyVO companyVO) throws Exception {
		mapper.companyUpdate(companyVO);
	}

	public void companyDelete(CompanyVO companyVO) throws Exception {
		mapper.companyDelete(companyVO);
	}

	public CompanyVO getCompanyOne(CompanyVO companyVO) throws Exception {
		return mapper.getCompanyOne(companyVO);
	}

	public CompanyVO getCompanyOneName(String orderCompany) throws Exception {
		return mapper.getCompanyOneName(orderCompany);
	}



}
