package com.ezds.erp.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.util.ObjectUtils;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.ezds.erp.vo.UserVO;

@Component
public class CertificationInterceptor implements HandlerInterceptor{
 
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        HttpSession session = request.getSession();
        
        UserVO loginVO = new UserVO();
        
        loginVO.setUserEmail(request.getParameter("userEmail"));
        loginVO.setUserPw(request.getParameter("userPw"));
        
       
        
        System.out.println("pre handle........");
 
        if(ObjectUtils.isEmpty(loginVO)){
            response.sendRedirect("/");
            return false;
        }
        /*}else if (session.getAttribute("userEmail") == null) {  //세션 로그인이 없으면 리다이렉트 처리
			response.sendRedirect("/loginForm");
			return false;
		}*/
        else{
            session.setMaxInactiveInterval(30*60);
            return true;
        }
        
    }
 
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
            ModelAndView modelAndView) throws Exception {
    	  System.out.println("postHandle handle........");
        // TODO Auto-generated method stub
        
    }
 
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
  	  System.out.println("afterCompletion handle........");
        // TODO Auto-generated method stub
        
    }
 
}