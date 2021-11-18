package com.ezds.erp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezds.erp.service.InventoryService;
import com.ezds.erp.vo.CompanyVO;
import com.ezds.erp.vo.InventoryVO;

@Controller
public class InventoryController { //Z5 생산 부품 입출고
	
	@Autowired
	private InventoryService service;
	
	@RequestMapping("/user/ivt")
	public String inventory(@ModelAttribute InventoryVO inventoryVO,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<InventoryVO> list = service.getIvtList(inventoryVO);
		System.out.println(list.toString());
		model.addAttribute("getIvtList",  list);
		
		return  "/inventory/ivt_main";
	}
	
	@RequestMapping("/user/popup")
	public String inventoryPopUp(@ModelAttribute InventoryVO inventoryVO,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<InventoryVO> list = service.getIvtList(inventoryVO);
		System.out.println(list.toString());
		model.addAttribute("getIvtList",  list);
		
		return  "/inventory/ivt_modal";
	}
	
	
}
