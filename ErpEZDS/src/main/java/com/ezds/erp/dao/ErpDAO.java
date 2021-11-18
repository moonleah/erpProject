package com.ezds.erp.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ezds.erp.mapper.ErpMapper;
import com.ezds.erp.vo.CompanyVO;

@Component
public class ErpDAO {
	
	@Autowired
	private ErpMapper mapper;
	

	
	public String Select() throws Exception {
		return mapper.selectCompany();
	}

	public List<CompanyVO> SelectAll() throws Exception {
		return mapper.selectAll();
	}


}
