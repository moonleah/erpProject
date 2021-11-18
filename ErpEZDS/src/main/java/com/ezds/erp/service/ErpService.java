package com.ezds.erp.service;

import java.util.List;

import com.ezds.erp.vo.CompanyVO;

public interface ErpService {
	public String selectCompany() throws Exception;

	public List<CompanyVO>selectList() throws Exception;
}
