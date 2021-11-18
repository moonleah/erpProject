package com.ezds.erp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.SqlSession;

import com.ezds.erp.vo.InventoryVO;
import com.ezds.erp.vo.UserVO;


@Mapper
public interface InventoryMapper {


	public List<InventoryVO> getIvtList(InventoryVO inventoryVO) throws Exception;

	
}
