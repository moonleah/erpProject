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
import com.ezds.erp.vo.ProductVO;
import com.ezds.erp.vo.SubSpecVO;

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
	public String productUpdateView(@ModelAttribute ProductVO productVO,@ModelAttribute SubSpecVO subSpecVO ,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ProductVO getProductOne =  prdService.getProductOne(productVO);
		System.out.println(getProductOne.getPrdNo());
		List<ProductVO> categoryList =  prdService.getCateList();
		List<ProductVO> subCategoryList =  prdService.getSubCateList();
		List<SubSpecVO> subSpecList =  prdService.getSubSpecList(getProductOne.getPrdNo());
		model.addAttribute("product",  getProductOne);
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("subCategoryList", subCategoryList);
		model.addAttribute("subSpecList", subSpecList);
		return  "/product/product_update";
	}
	
	@RequestMapping("/user/getProductList")
	@ResponseBody
	public List<ProductVO> getProductListAjax(@ModelAttribute  ProductVO productVO,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<ProductVO> list = prdService.getProductList();
		return list;
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
	
	@RequestMapping("/user/productSpecInsert")
	@ResponseBody
	public void productSpecInsert(@ModelAttribute  SubSpecVO subSpecVO,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		prdService.productSpecInsert(subSpecVO);
	}

	@RequestMapping("/user/deleteSubSpec")
	@ResponseBody
	public void deleteSubSpec(@ModelAttribute  SubSpecVO subSpecVO,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		prdService.productSpecDelete(subSpecVO);
	}
	
	@RequestMapping("/user/getSubSpecList")
	@ResponseBody
	public List<SubSpecVO> getSubSpecList(@ModelAttribute  SubSpecVO subSpecVO,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<SubSpecVO> subSpecList = prdService.getSubSpecList(subSpecVO.getSubSpecPrdNo());
		return subSpecList;
	}
}
