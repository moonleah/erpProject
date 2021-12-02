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

import com.ezds.erp.service.OutgoService;
import com.ezds.erp.vo.OutgoVO;

@Controller
public class OrderController { //Z5 생산 부품 출고
	
	@Autowired
	private OutgoService service;
	
	@RequestMapping("/user/order")
	public String Save(@ModelAttribute OutgoVO OutgoVO,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		return  "/order/order_main";
	}

}
