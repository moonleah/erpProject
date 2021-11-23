package com.ezds.erp.vo;


public class CompanyVO {
	
	@Override
	public String toString() {
		return "CompanyVO [companyId=" + companyId + ", companyName=" + companyName + ", companyType=" + companyType
				+ ", companyTel=" + companyTel + ", companyAddress=" + companyAddress + "]";
	}
	private Integer companyId;
	private String companyName;
	private Integer companyType;
	private String companyTel;
	private String companyAddress;
	

	public Integer getCompanyId() {
		return companyId;
	}
	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public Integer getCompanyType() {
		return companyType;
	}
	public void setCompanyType(Integer companyType) {
		this.companyType = companyType;
	}
	public String getCompanyTel() {
		return companyTel;
	}
	public void setCompanyTel(String companyTel) {
		this.companyTel = companyTel;
	}
	public String getCompanyAddress() {
		return companyAddress;
	}
	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}
	

}
