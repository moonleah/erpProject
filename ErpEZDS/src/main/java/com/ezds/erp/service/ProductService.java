package com.ezds.erp.service;

import java.util.List;

import com.ezds.erp.vo.ProductVO;
import com.ezds.erp.vo.SubSpecVO;

public interface ProductService {
	public List<ProductVO> getProductList() throws Exception;

	public List<ProductVO> getProductList(ProductVO productVO) throws Exception;

	public ProductVO getPrdDetail(Integer prdNo) throws Exception;

	public void productInsert(ProductVO productVO) throws Exception;

	public ProductVO getProductOne(ProductVO productVO) throws Exception;

	public void productUpdate(ProductVO productVO) throws Exception;

	public void productDelete(ProductVO productVO) throws Exception;

	public List<ProductVO> getCateList() throws Exception;

	public List<ProductVO> getSubCateList() throws Exception;

	public List<SubSpecVO> getSubSpecList(Integer prdNo) throws Exception;

	public void productSpecInsert(SubSpecVO subSpecVO) throws Exception;

	public void productSpecDelete(SubSpecVO subSpecVO) throws Exception;

	public List<ProductVO> getPrdCategory() throws Exception;

}
