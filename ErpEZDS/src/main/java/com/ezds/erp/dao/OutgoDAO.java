package com.ezds.erp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ezds.erp.mapper.OutgoMapper;
import com.ezds.erp.vo.IncomVO;
import com.ezds.erp.vo.OutgoVO;

@Component
public class OutgoDAO {
	
	@Autowired
	private OutgoMapper mapper;


	public List<OutgoVO> getOutgoList()  throws Exception{
		// TODO Auto-generated method stub
		return mapper.getOutgoList();
	}
	


}
