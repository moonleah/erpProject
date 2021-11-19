package com.ezds.erp.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezds.erp.dao.ProductDAO;
import com.ezds.erp.service.ProductService;
import com.ezds.erp.vo.ProductVO;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	ProductDAO productDao;

	@Override
	public List<ProductVO> getProductList() throws Exception {
		return productDao.getProductList();
	}

	@Override
	public ProductVO getPrdDetail(Integer prdNo) throws Exception {
		return productDao.getPrdDetail(prdNo);
	}





}
