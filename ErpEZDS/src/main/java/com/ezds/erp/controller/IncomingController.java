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

import com.ezds.erp.service.IncomService;
import com.ezds.erp.vo.IncomVO;

@Controller
public class IncomingController {   //Z5 생산 부품 입고 
	
	@Autowired
	private IncomService icmService;
	

    @RequestMapping(value="/user/icm") //입고수량 합산 List 
    public String getIncomTotalList(@ModelAttribute IncomVO IcomVO,Model model, HttpServletRequest request, HttpServletResponse response) throws Exception{
    
    	List<IncomVO> list = icmService.getIncomList(IcomVO);
    	System.out.println(list);
    	model.addAttribute("getIncomList",  list);
    	
    	return "incoming/incom_main"; // 
    }
	
    @RequestMapping(value="/user/icmList") //입고수량 합산 List
    @ResponseBody
    public List<IncomVO> getIncomList(@ModelAttribute IncomVO IcomVO) throws Exception{
    	List<IncomVO> list = icmService.getIncomList(IcomVO);
    	return list;  
    }
	
    
   

}
