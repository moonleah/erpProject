package com.ezds.erp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.SqlSession;

import com.ezds.erp.vo.CompanyVO;


@Mapper
public interface CompanyMapper {

	public String selectCompany() throws Exception;
	public List<CompanyVO> selectAll() throws Exception;
	public void companyInsert(CompanyVO companyVO) throws Exception;
	public void companyUpdate(CompanyVO companyVO) throws Exception;
	public void companyDelete(CompanyVO companyVO) throws Exception;
	public CompanyVO getCompanyOne(CompanyVO companyVO) throws Exception;

}
