package com.ezds.erp.service;

import java.util.List;

import com.ezds.erp.vo.CompanyVO;

public interface CompanyService {
	public String selectCompany() throws Exception;
	public List<CompanyVO>selectList() throws Exception;
	public void companyInsert(CompanyVO companyVO) throws Exception;
	public void companyUpdate(CompanyVO companyVO) throws Exception;
	public void companyDelete(CompanyVO companyVO) throws Exception;
	public CompanyVO getCompanyOne(CompanyVO companyVO) throws Exception;
	public CompanyVO getCompanyOneName(String orderCompany) throws Exception;
}
