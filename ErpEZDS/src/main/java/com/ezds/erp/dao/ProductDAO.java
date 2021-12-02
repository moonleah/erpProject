package com.ezds.erp.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ezds.erp.mapper.ProductMapper;
import com.ezds.erp.vo.ProductVO;
import com.ezds.erp.vo.SubSpecVO;

@Component

public class ProductDAO {
	
	@Autowired
	private ProductMapper mapper;
	

	public List<ProductVO> getProductList()  throws Exception {
		return mapper.getProductList();
	}
	public ProductVO getPrdDetail(Integer prdNo) throws Exception {
		return mapper.getPrdDetail(prdNo);
	}
	public void productInsert(ProductVO productVO) throws Exception {
		mapper.productInsert(productVO);
	}
	public ProductVO getProductOne(ProductVO productVO) throws Exception {
		return mapper.getProductOne(productVO);
	}
	public void productUpdate(ProductVO productVO) throws Exception {
		mapper.productUpdate(productVO);
	}
	public void productDelete(ProductVO productVO) throws Exception {
		mapper.productDelete(productVO);
	}
	public List<ProductVO> getCateList() throws Exception {
		return 	mapper.getCateList();
	}
	public List<ProductVO> getSubCateList() throws Exception {
		return 	mapper.getSubCateList();
	}
	public List<SubSpecVO> getSubSpecList(Integer prdNo) throws Exception {
		return mapper.getSubSpecList(prdNo);
	}
	public void productSpecInsert(SubSpecVO subSpecVO) throws Exception {
			mapper.productSpecInsert(subSpecVO);		
	}
	public void productSpecDelete(SubSpecVO subSpecVO) throws Exception {
			mapper.productSpecDelete(subSpecVO);			
	}


}
