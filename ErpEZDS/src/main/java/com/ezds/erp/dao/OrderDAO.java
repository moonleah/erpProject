package com.ezds.erp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ezds.erp.mapper.OrderMapper;
import com.ezds.erp.vo.OrderVO;

@Component
public class OrderDAO {

	@Autowired
	private OrderMapper mapper;

	public int insertProductOrder(OrderVO orderVO) throws Exception {
		return mapper.insertProductOrder(orderVO);
	}

	public List<OrderVO> getProductOrderList(OrderVO orderVO) throws Exception {
		return mapper.getProductOrderList(orderVO);
	}

	public OrderVO getPurchaseOrder(Integer orderId) throws Exception {
		return mapper.getPurchaseOrder(orderId);
	}

	public int statusUpdate(OrderVO orderVO) throws Exception {
		return mapper.statusUpdate(orderVO);
	}

	public List<OrderVO> getOrderAllList(OrderVO orderVO) throws Exception {
		return mapper.getOrderAllList(orderVO);
	}

}
