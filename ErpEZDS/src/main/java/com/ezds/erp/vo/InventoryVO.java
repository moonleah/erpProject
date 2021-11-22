package com.ezds.erp.vo;


public class InventoryVO { //인벤토리
	
	private Integer ivtId; 
	private Integer prdNo; 
	private String prdSpec;
	private String cateName;
	private Integer icmSumQty;
	private Integer outSumQty;
	private Integer ivtTotal;
	private Integer prdQty;
	private Integer prdMoq;
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
	public String getPrdSpec() {
		return prdSpec;
	}
	public void setPrdSpec(String prdSpec) {
		this.prdSpec = prdSpec;
	}
	public String getCateName() {
		return cateName;
	}
	public void setCateName(String cataName) {
		this.cateName = cataName;
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
	public Integer getPrdMoq() {
		return prdMoq;
	}
	public void setPrdMoq(Integer prdMoq) {
		this.prdMoq = prdMoq;
	}

	
}
