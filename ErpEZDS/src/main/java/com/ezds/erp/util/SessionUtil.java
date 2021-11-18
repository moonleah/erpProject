package com.ezds.erp.util;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.ezds.erp.vo.UserVO;

public class SessionUtil {
	public static HttpServletRequest getRequest() {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		return request;
	}
	
	public static HttpServletResponse getResponse() {
		HttpServletResponse response = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getResponse();
		return response;
	}
	
	public static HttpSession getSession() {
		HttpServletRequest request = SessionUtil.getRequest();
		return request.getSession(true);
	}
	
	
	public static UserVO getUser() {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		return (UserVO)request.getSession().getAttribute("userEmail");
	}
	
	public static String getAuth(String authType){
		Map<String, String> map = SessionUtil.getUser().getAuthMap().get(SessionUtil.getRequest().getAttribute("javax.servlet.forward.request_uri"));
		return map == null ? "N" : (map.get(authType) == null ? "N" : map.get(authType));
	}
	
	public static Map<String, String> getAuthMap(){
		return SessionUtil.getUser().getAuthMap().get(SessionUtil.getRequest().getAttribute("javax.servlet.forward.request_uri"));
	}
	
	public static String getAuthByUrl(String url, String authType){
		Map<String, String> map = SessionUtil.getUser().getAuthMap().get(url);
		return map == null ? "N" : (map.get(authType) == null ? "N" : map.get(authType));
	}
	
	public static Map<String, String> getAuthMapByUrl(String url){
		return SessionUtil.getUser().getAuthMap().get(url);
	}
	
	/*
	 * public static String getFakeDomain(String domainNm) { if(domainNm == null) {
	 * return null; } InetAddress ip = null; try { ip = Inet4Address.getLocalHost();
	 * } catch (Exception e) { e.printStackTrace(); } return
	 * domainNm.equals("localhost") || domainNm.equals(ip.getHostAddress()) ?
	 * "www.zenithdiag.com" : domainNm.equals("admin.localhost") ?
	 * "admin.zenithdiag.com" : domainNm.equals("dealer.localhost") ?
	 * "dealer.zenithdiag.com" : domainNm; }
	 */
}