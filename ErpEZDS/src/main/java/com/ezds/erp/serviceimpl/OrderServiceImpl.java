package com.ezds.erp.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezds.erp.dao.OrderDAO;
import com.ezds.erp.service.OrderService;
import com.ezds.erp.vo.OrderVO;

@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	OrderDAO orderDao;

	@Override
	public int insertProductOrder(OrderVO orderVO) throws Exception {
		return orderDao.insertProductOrder(orderVO);
	}

	@Override
	public List<OrderVO> getProductOrderList(OrderVO orderVO) throws Exception {
		return orderDao.getProductOrderList(orderVO);
	}

	@Override
	public OrderVO getPurchaseOrder(Integer orderId) throws Exception {
		return orderDao.getPurchaseOrder(orderId);
	}

	@Override
	public int statusUpdate(OrderVO orderVO) throws Exception {
		return orderDao.statusUpdate(orderVO);
	}
	
	

}
