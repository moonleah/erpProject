package com.ezds.erp.controller;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezds.erp.service.CompanyService;
import com.ezds.erp.service.UserService;
import com.ezds.erp.vo.UserVO;

@Controller
public class LoginController {
  
    @Autowired 
    UserService userService;
    
	@Autowired
	private BCryptPasswordEncoder encodePwd;
  
    @RequestMapping(value="/loginForm")
    public String loginForm(HttpSession session, UserVO userVO) throws Exception{
    System.out.println("로그인 폼 페이지로 ");
    	return "login/login"; // 로그인 폼으로 다시 가도록 함
    }
    
    @RequestMapping(value="/registForm")
    public String registForm(HttpSession session, UserVO userVO) throws Exception{
    	
    System.out.println("회원가입 폼 페이지로 ");
    	return "login/register"; // 로그인 폼으로 다시 가도록 함
    }
    
    @RequestMapping(value="/forgot-password")
    public String forgotPassword(HttpSession session, UserVO userVO) throws Exception{
    System.out.println("forgot-password 페이지로 ");
    	return "login/forgot-password"; // 로그인 폼으로 다시 가도록 함
    }
    
    
    @GetMapping("/login")
    public String login() {
    	return "login/login"; // 로그인 폼으로 다시 가도록 함
    }
    
    
    @RequestMapping(value="/regist")
    public String regist(HttpSession session, UserVO userVO) throws Exception{
		String rawPwd = userVO.getUserPw(); 
	    String encPwd = encodePwd.encode(rawPwd);
	    userVO.setUserPw(encPwd);
	    
	    userService.insertUser(userVO);
	  
	   	return "redirect:/loginForm"; // 로그인 폼으로 다시 가도록 함
    }
    // 로그아웃 하는 부분
   
    
    @Secured("ROLE_ADMIN") //간단하게 롤 추가 
    @RequestMapping(value="/info")
    public @ResponseBody String info (HttpSession session) {
        return "info"; // 로그아웃 후 로그인화면으로 이동
    }
    
    @PreAuthorize("hasRole('ROLE_MANAGER') or hasRole('ROLE_ADMIN') ") //간단하게 롤 추가 
    @RequestMapping(value="/data")
    public @ResponseBody String data (HttpSession session) {
        return "데이터"; // 로그아웃 후 로그인화면으로 이동
    }
    
    
    
    
} // end of controller