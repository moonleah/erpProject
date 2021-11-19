package com.ezds.erp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezds.erp.service.IncomService;
import com.ezds.erp.service.InventoryService;
import com.ezds.erp.service.OutgoService;
import com.ezds.erp.service.ProductService;
import com.ezds.erp.vo.IncomVO;
import com.ezds.erp.vo.InventoryVO;
import com.ezds.erp.vo.ProductVO;

@Controller
public class InventoryController { //Z5 생산 부품 입출고
	
	@Autowired
	private InventoryService ivtService;
	@Autowired
	private IncomService icmService;
	@Autowired
	private OutgoService outService;
	@Autowired
	private ProductService prdService;
	
	@RequestMapping("/user/ivt")
	public String inventory(@ModelAttribute InventoryVO inventoryVO,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<InventoryVO> list = ivtService.getIvtList(inventoryVO);
		System.out.println(list.toString());
		model.addAttribute("getIvtList",  list);
		
		return  "/inventory/ivt_main";
	}
	
	@RequestMapping("/user/popup")
	public String inventoryPopUp(@ModelAttribute InventoryVO inventoryVO,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		return  "/inventory/ivt_modal";
	}
	
	@RequestMapping("/user/ivtDetail")
	//@ResponseBody
	public String ivtDetail(@ModelAttribute InventoryVO inventoryVO,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		Integer prdNo = inventoryVO.getPrdNo();
		System.out.println( "prdNO :" + prdNo);
		ProductVO prdInfo = prdService.getPrdDetail(prdNo);
		List<IncomVO> getIcmDetailList = icmService.getIcmDetailList(prdNo);
		model.addAttribute("prdInfo",  prdInfo);
		model.addAttribute("getIncomList",  getIcmDetailList);
		model.addAttribute("prdInfo",  prdInfo);
		
		return  "/inventory/ivt_modal";
	}
	
	
	
	
	
	
}
