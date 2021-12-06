package com.ezds.erp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.SqlSession;

import com.ezds.erp.vo.OrderVO;
import com.ezds.erp.vo.UserVO;


@Mapper
public interface OrderMapper {

	int insertProductOrder(OrderVO orderVO) throws Exception;
	List<OrderVO> getProductOrderList(OrderVO orderVO) throws Exception;
	OrderVO getPurchaseOrder(Integer orderId) throws Exception;
	int statusUpdate(OrderVO orderVO) throws Exception;

	
}
