package com.ezds.erp.service;

import java.util.List;

import com.ezds.erp.vo.InventoryVO;

public interface InventoryService {

	public List<InventoryVO> getIvtList(InventoryVO inventoryVO) throws Exception;

	
}
