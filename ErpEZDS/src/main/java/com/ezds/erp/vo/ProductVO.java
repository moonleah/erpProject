package com.ezds.erp.vo;


public class ProductVO {
	private Integer prdId;
	private Integer cateId;
	private Integer subCateId;
	private Integer prdQty;
	private Integer prdMoq;
	private Integer prdNo;
	private String prdDesc;
	private String prdSpec;
	private String prdTol;
	private String prdTemp;
	private String prdType;
	private String prdMaker;
	private String prdCategory;
	private String updateDate;

	private String cateName;
	private String subCateName;
	private Integer ivtTotal;

	public Integer getPrdId() {
		return prdId;
	}

	public void setPrdId(Integer prdId) {
		this.prdId = prdId;
	}

	public Integer getCateId() {
		return cateId;
	}

	public void setCateId(Integer cateId) {
		this.cateId = cateId;
	}

	public Integer getSubCateId() {
		return subCateId;
	}

	public void setSubCateId(Integer subCateId) {
		this.subCateId = subCateId;
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

	public String getPrdSpec() {
		return prdSpec;
	}

	public void setPrdSpec(String prdSpec) {
		this.prdSpec = prdSpec;
	}

	public String getPrdTol() {
		return prdTol;
	}

	public void setPrdTol(String prdTol) {
		this.prdTol = prdTol;
	}

	public String getPrdTemp() {
		return prdTemp;
	}

	public void setPrdTemp(String prdTemp) {
		this.prdTemp = prdTemp;
	}

	public String getPrdType() {
		return prdType;
	}

	public void setPrdType(String prdType) {
		this.prdType = prdType;
	}

	public String getPrdMaker() {
		return prdMaker;
	}

	public void setPrdMaker(String prdMaker) {
		this.prdMaker = prdMaker;
	}

	public String getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	}

	public String getSubCateName() {
		return subCateName;
	}

	public void setSubCateName(String subCateName) {
		this.subCateName = subCateName;
	}

	public Integer getPrdQty() {
		return prdQty;
	}

	public void setPrdQty(Integer prdQty) {
		this.prdQty = prdQty;
	}

	public Integer getPrdMoq() {
		return prdMoq;
	}

	public void setPrdMoq(Integer prdMoq) {
		this.prdMoq = prdMoq;
	}

	public String getPrdCategory() {
		return prdCategory;
	}

	public void setPrdCategory(String prdCategory) {
		this.prdCategory = prdCategory;
	}

	public Integer getIvtTotal() {
		return ivtTotal;
	}

	public void setIvtTotal(Integer ivtTotal) {
		this.ivtTotal = ivtTotal;
	}

}
