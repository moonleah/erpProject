package com.ezds.erp.vo;

import java.util.List;
import java.util.Map;

public class UserVO {
	
	private Integer userId; 
	private String userEmail; 
	private String userPw;
	private String userName;
	private String userAddr;
	private String userCompany;
	private String userRole;
	
	private List<UserVO> list;
	//private List<RoleVO> roleList;
	private Map<String, Map<String, String>> authMap;
	
	
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserAddr() {
		return userAddr;
	}
	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}
	public String getUserCompany() {
		return userCompany;
	}
	public void setUserCompany(String userCompany) {
		this.userCompany = userCompany;
	}
	@Override
	public String toString() {
		return "UserVO [userId=" + userId + ", userEmail=" + userEmail + ", userPw=" + userPw + ", userName=" + userName
				+ ", userAddr=" + userAddr + ", userCompany=" + userCompany + "]";
	}
	public List<UserVO> getList() {
		return list;
	}
	public void setList(List<UserVO> list) {
		this.list = list;
	}

	/*
	 * public List<RoleVO> getRoleList() { return roleList; } public void
	 * setRoleList(List<RoleVO> roleList) { this.roleList = roleList; }
	 */
	public Map<String, Map<String, String>> getAuthMap() {
		return authMap;
	}
	public void setAuthMap(Map<String, Map<String, String>> authMap) {
		this.authMap = authMap;
	}
	public String getUserRole() {
		return userRole;
	}
	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

	
}
