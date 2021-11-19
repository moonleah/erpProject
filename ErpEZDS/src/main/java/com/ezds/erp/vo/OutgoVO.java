package com.ezds.erp.vo;

public class OutgoVO {
	
	private Integer outId; 
	private Integer prdId;
	
	private String outQty;
	
	private String outPrice;
	private String outComment;
	private String outDate;
	private String outCompanyName;
	
	private String updateDate;
	
	private String prdNo; //부품제품번호
	private String prdSpec; //부품 spec
	
	public Integer getOutId() {
		return outId;
	}
	public void setOutId(Integer outId) {
		this.outId = outId;
	}
	public Integer getPrdId() {
		return prdId;
	}
	public void setPrdId(Integer prdId) {
		this.prdId = prdId;
	}
	public String getOutQty() {
		return outQty;
	}
	public void setOutQty(String outQty) {
		this.outQty = outQty;
	}
	public String getOutPrice() {
		return outPrice;
	}
	public void setOutPrice(String outPrice) {
		this.outPrice = outPrice;
	}
	public String getOutComment() {
		return outComment;
	}
	public void setOutComment(String outComment) {
		this.outComment = outComment;
	}
	public String getOutDate() {
		return outDate;
	}
	public void setOutDate(String outDate) {
		this.outDate = outDate;
	}
	public String getOutCompanyName() {
		return outCompanyName;
	}
	public void setOutCompanyName(String outCompanyName) {
		this.outCompanyName = outCompanyName;
	}
	public String getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}
	public String getPrdNo() {
		return prdNo;
	}
	public void setPrdNo(String prdNo) {
		this.prdNo = prdNo;
	}
	public String getPrdSpec() {
		return prdSpec;
	}
	public void setPrdSpec(String prdSpec) {
		this.prdSpec = prdSpec;
	}
	
	
	

}
