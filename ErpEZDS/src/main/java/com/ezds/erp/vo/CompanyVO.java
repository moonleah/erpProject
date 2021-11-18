package com.ezds.erp.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CompanyVO {
	
	@Override
	public String toString() {
		return "CompanyVO [companyId=" + companyId + ", companyName=" + companyName + ", companyType=" + companyType
				+ ", companyTel=" + companyTel + ", companyAddress=" + companyAddress + "]";
	}
	private int companyId;
	private String companyName;
	private int companyType;
	private String companyTel;
	private String companyAddress;
	

	public int getCompanyId() {
		return companyId;
	}
	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public int getCompanyType() {
		return companyType;
	}
	public void setCompanyType(int companyType) {
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
