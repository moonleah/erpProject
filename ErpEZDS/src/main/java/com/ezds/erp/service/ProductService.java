package com.ezds.erp.service;

import java.util.List;

import com.ezds.erp.vo.ProductVO;

public interface ProductService {
	public List<ProductVO>getProductList() throws Exception;
}
