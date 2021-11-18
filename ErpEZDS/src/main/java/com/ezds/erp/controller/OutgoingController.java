package com.ezds.erp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ezds.erp.service.ErpService;
import com.ezds.erp.vo.CompanyVO;

@Controller
public class OutgoingController { //Z5 생산 부품 출고
	
	@Autowired
	private ErpService service;
	
	@RequestMapping("/user")
	public String Save(@ModelAttribute CompanyVO companyVO,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<CompanyVO> list = service.selectList();
		System.out.println(list.toString());
		model.addAttribute("selectList",  list);
		return  "/index";
	}
	
	@RequestMapping("/user/company")
	public String erp(@ModelAttribute CompanyVO companyVO,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<CompanyVO> list = service.selectList();
		System.out.println(list.toString());
		model.addAttribute("selectList",  list);
		return  "/index";
	}

}
