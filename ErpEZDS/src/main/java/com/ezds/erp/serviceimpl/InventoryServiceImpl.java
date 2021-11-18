package com.ezds.erp.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezds.erp.dao.InventoryDAO;
import com.ezds.erp.service.InventoryService;
import com.ezds.erp.vo.InventoryVO;

@Service
public class InventoryServiceImpl implements InventoryService{

	@Autowired
	InventoryDAO inventoryDao;

	@Override
	public List<InventoryVO> getIvtList(InventoryVO inventoryVO) throws Exception {
	
		return inventoryDao.getIvtList(inventoryVO);
	}
	
	
	

}
