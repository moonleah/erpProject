package com.ezds.erp.service;

import java.util.List;

import com.ezds.erp.vo.ProductVO;

public interface ProductService {
	public List<ProductVO>getProductList() throws Exception;
	public ProductVO getPrdDetail(Integer prdNo) throws Exception;
	public void productInsert(ProductVO productVO) throws Exception;
	public ProductVO getProductOne(ProductVO productVO) throws Exception;
	public void productUpdate(ProductVO productVO) throws Exception;
	public void productDelete(ProductVO productVO) throws Exception;
	public List<ProductVO> getCateList() throws Exception;
	public List<ProductVO> getSubCateList() throws Exception;
	
	
}
