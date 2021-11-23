package com.ezds.erp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezds.erp.service.ProductService;
import com.ezds.erp.vo.CompanyVO;
import com.ezds.erp.vo.ProductVO;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService prdService;
	
	@RequestMapping("/user/productList")
	public String getProductList(@ModelAttribute ProductVO productVO, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<ProductVO> list = prdService.getProductList();
	
		
		model.addAttribute("getProductList", list);
		
		return  "/product/product_main";
	}
	
	@RequestMapping("/user/productAdd")
	public String productAdd(@ModelAttribute ProductVO productVO,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<ProductVO> categoryList =  prdService.getCateList();
		List<ProductVO> subCategoryList =  prdService.getSubCateList();
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("subCategoryList", subCategoryList);
		return  "/product/product_insert";
	}
	
	@RequestMapping("/user/productInsert")
	@ResponseBody
	public void productInsert(@ModelAttribute  ProductVO productVO,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		prdService.productInsert(productVO);
	}
	
	@RequestMapping("/user/productUpdateView")
	public String productUpdateView(@ModelAttribute  ProductVO productVO,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		ProductVO getProductOne =  prdService.getProductOne(productVO);
		List<ProductVO> categoryList =  prdService.getCateList();
		List<ProductVO> subCategoryList =  prdService.getSubCateList();
		model.addAttribute("product",  getProductOne);
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("subCategoryList", subCategoryList);
		return  "/product/product_update";
	}
	
	@RequestMapping("/user/productUpdate")
	@ResponseBody
	public void productUpdate(@ModelAttribute  ProductVO productVO,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		prdService.productUpdate(productVO);
	}
	
	@RequestMapping("/user/productDelete")
	@ResponseBody
	public void productDelete(@ModelAttribute  ProductVO productVO,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		prdService.productDelete(productVO);
	}
	

}
