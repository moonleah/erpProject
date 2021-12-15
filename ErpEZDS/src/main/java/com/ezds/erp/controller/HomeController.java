package com.ezds.erp.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezds.erp.service.UserService;

@Controller
public class HomeController {
	@Autowired
	UserService userService;

	@RequestMapping("/")
	public String Home(Principal principal, Model model, HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws Exception {
		if (principal != null) {
			System.out.println(principal.getName());
			System.out.println(principal.toString());
			UserDetails userDetails = (UserDetails) authentication.getPrincipal();
			System.out.println(userDetails);

			return "index"; // 로그인정보가 있을 경우
		}

		return "redirect:/loginForm"; // 로그인 페이지
	}

}
