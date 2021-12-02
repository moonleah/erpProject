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
import com.ezds.erp.vo.OutgoVO;
import com.ezds.erp.vo.ProductVO;

import jdk.internal.org.jline.utils.Log;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
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
	public String ivtDetail(@ModelAttribute InventoryVO inventoryVO,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		Integer prdNo = inventoryVO.getPrdNo();
		ProductVO prdInfo = prdService.getPrdDetail(prdNo);
		prdInfo.setIvtTotal(inventoryVO.getIvtTotal());
		List<IncomVO> getIcmDetailList = icmService.getIcmDetailList(prdNo);
		List<OutgoVO> getOutDetailList = outService.getOutDetailList(prdNo);
		model.addAttribute("prdInfo",  prdInfo);
		model.addAttribute("getIncomList",  getIcmDetailList);
		model.addAttribute("getOutgoList",  getOutDetailList);
		
		return  "/inventory/ivt_modal";
	}
	
	
	
	
	
	
}
