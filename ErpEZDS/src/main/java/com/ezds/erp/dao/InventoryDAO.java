package com.ezds.erp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ezds.erp.mapper.InventoryMapper;
import com.ezds.erp.vo.InventoryVO;

@Component
public class InventoryDAO {
	
	@Autowired
	private InventoryMapper mapper;

	public List<InventoryVO> getIvtList(InventoryVO inventoryVO) throws Exception {
		return mapper.getIvtList(inventoryVO);
	}
	


}
