package com.ezds.erp.service;

import java.util.List;

import com.ezds.erp.vo.CompanyVO;
import com.ezds.erp.vo.OrderVO;

public interface OrderService {

	int insertProductOrder(OrderVO orderVO) throws Exception ;

	List<OrderVO> getProductOrderList(OrderVO orderVO) throws Exception ;

	OrderVO getPurchaseOrder(Integer orderId) throws Exception ;

	int statusUpdate(OrderVO orderVO) throws Exception ;



	
}
