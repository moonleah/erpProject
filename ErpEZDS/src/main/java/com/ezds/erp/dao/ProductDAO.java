package com.ezds.erp.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ezds.erp.mapper.ProductMapper;
import com.ezds.erp.vo.ProductVO;

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


}
