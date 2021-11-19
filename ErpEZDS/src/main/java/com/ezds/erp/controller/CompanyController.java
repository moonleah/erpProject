package com.ezds.erp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezds.erp.service.CompanyService;
import com.ezds.erp.vo.CompanyVO;

@Controller
public class CompanyController { //Z5 생산부품 회사 
	
	@Autowired
	private CompanyService service;
	
	@RequestMapping("/user/company")
	public String getCompany(@ModelAttribute CompanyVO companyVO,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<CompanyVO> list = service.selectList();
		System.out.println(list.toString());
		model.addAttribute("selectList",  list);
		return  "/company/company_main";
	}

}
