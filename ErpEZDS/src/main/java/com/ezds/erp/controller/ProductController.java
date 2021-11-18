package com.ezds.erp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezds.erp.service.ProductService;
import com.ezds.erp.vo.CompanyVO;
import com.ezds.erp.vo.ProductVO;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService prdService;
	
	@RequestMapping("/user/productList")
	public String getProductList(@ModelAttribute ProductVO ProductVO, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<ProductVO> list = prdService.getProductList();
		System.out.println(list.toString());
		model.addAttribute("getProductList", list);
		return  "/product/product_main";
	}
	

}
