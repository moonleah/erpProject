package com.ezds.erp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ezds.erp.mapper.IncomMapper;
import com.ezds.erp.vo.IncomVO;

@Component
public class IncomDAO {
	
	@Autowired
	private IncomMapper mapper;

	public List<IncomVO> getIncomList(IncomVO incomVO) throws Exception {
		
		return mapper.getIncomList(incomVO);
	}
	


}
