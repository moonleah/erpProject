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

	@Override
	public void productInsert(ProductVO productVO) throws Exception {
		productDao.productInsert(productVO);
	}

	@Override
	public ProductVO getProductOne(ProductVO productVO) throws Exception {
		return productDao.getProductOne(productVO);
	}

	@Override
	public void productUpdate(ProductVO productVO) throws Exception {
		productDao.productUpdate(productVO);
	}

	@Override
	public void productDelete(ProductVO productVO) throws Exception {
		productDao.productDelete(productVO);
	}

	@Override
	public List<ProductVO> getCateList() throws Exception {
		return productDao.getCateList();
	}

	@Override
	public List<ProductVO> getSubCateList() throws Exception {
		return productDao.getSubCateList();
	}





}
