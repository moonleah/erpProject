package com.ezds.erp.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezds.erp.service.CompanyService;
import com.ezds.erp.service.OrderService;
import com.ezds.erp.util.GenerateCertCharacter;
import com.ezds.erp.vo.CompanyVO;
import com.ezds.erp.vo.OrderVO;

@Controller
public class OrderController { //Z5 생산 부품 출고
	
	@Autowired
	private OrderService service;
	
	@Autowired
	private CompanyService comService;
	
	@Autowired
	private GenerateCertCharacter random;
	
	@RequestMapping("/user/order")
	public String Save(@ModelAttribute OrderVO orderVO,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		return  "/order/order_main";
	}
	
	@RequestMapping("/user/purchaseOrder") //구매발주서OPEN
	public String purchaseOrder(@RequestParam(value = "ArrId")String valueArr, @ModelAttribute OrderVO orderVO ,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String[] arr = valueArr.split(","); //체크박스 id 
		ArrayList<OrderVO> list = new ArrayList<OrderVO>();
		String codeNum = random.excuteGenerate2();
		int statusUpdate = 0;
		CompanyVO comvo = comService.getCompanyOneName(orderVO.getOrderCompany());
		model.addAttribute("companyList",  comvo);
		
		
		for(int i  = 0; i < arr.length; i++) {
		String restr = arr[i].replaceAll("[^0-9]",""); 
		Integer orderId = Integer.parseInt(restr);
		String orderStatus = "발주확정";
		orderVO.setOrderId(orderId);
		orderVO.setOrderStatus(orderStatus);
		orderVO.setOrderCodeNum(codeNum);
		statusUpdate = service.statusUpdate(orderVO);
		OrderVO result = service.getPurchaseOrder(orderId);
		list.add(result);
		codeNum = result.getOrderCodeNum();
		}
		
		model.addAttribute("codeNum",  codeNum);
		model.addAttribute("orderList",  list);
		
		return  "/order/order_purchase";
	}
	
	@RequestMapping("/user/productOrder")
	@ResponseBody
	public int insertProductOrder(@ModelAttribute OrderVO orderVO,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		orderVO.setOrderCode(random.excuteGenerate());
		orderVO.setOrderTotalPrice(orderVO.getOrderPrice() * orderVO.getOrderQty());
		orderVO.setOrderStatus("발주접수");
		int result =service.insertProductOrder(orderVO);  
		return result;
	}
	
	@RequestMapping("/user/productOrderList")
	@ResponseBody
	public List<OrderVO> getProductOrderList(@ModelAttribute OrderVO orderVO,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		  List<OrderVO> list = service.getProductOrderList(orderVO);
		return list;
	}
	

	@RequestMapping("/user/orderEntry")
	public String orderEntry(@ModelAttribute OrderVO orderVO,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		return  "/orderEntry/orderEntry_main";
	}

}
