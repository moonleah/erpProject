package com.ezds.erp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ezds.erp.vo.ProductVO;


@Mapper
public interface ProductMapper {
	
	public List<ProductVO> getProductList() throws Exception;
}
