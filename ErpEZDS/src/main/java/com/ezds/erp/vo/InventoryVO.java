package com.ezds.erp.vo;


public class InventoryVO { //인벤토리
	
	private Integer ivtId; 
	private Integer prdNo; 
	private String prdDesc;
	private Integer icmSumQty;
	private Integer outSumQty;
	private Integer ivtTotal;
	private Integer prdQty;
	private Integer avlPrdQty;
	
	public Integer getIvtId() {
		return ivtId;
	}
	public void setIvtId(Integer ivtId) {
		this.ivtId = ivtId;
	}
	public Integer getPrdNo() {
		return prdNo;
	}
	public void setPrdNo(Integer prdNo) {
		this.prdNo = prdNo;
	}
	public String getPrdDesc() {
		return prdDesc;
	}
	public void setPrdDesc(String prdDesc) {
		this.prdDesc = prdDesc;
	}
	public Integer getIcmSumQty() {
		return icmSumQty;
	}
	public void setIcmSumQty(Integer icmSumQty) {
		this.icmSumQty = icmSumQty;
	}
	public Integer getOutSumQty() {
		return outSumQty;
	}
	public void setOutSumQty(Integer outSumQty) {
		this.outSumQty = outSumQty;
	}
	public Integer getIvtTotal() {
		return ivtTotal;
	}
	public void setIvtTotal(Integer ivtTotal) {
		this.ivtTotal = ivtTotal;
	}
	public Integer getPrdQty() {
		return prdQty;
	}
	public void setPrdQty(Integer prdQty) {
		this.prdQty = prdQty;
	}
	public Integer getAvlPrdQty() {
		return avlPrdQty;
	}
	public void setAvlPrdQty(Integer avlPrdQty) {
		this.avlPrdQty = avlPrdQty;
	}

	
}
