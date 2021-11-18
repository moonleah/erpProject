package com.ezds.erp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.SqlSession;

import com.ezds.erp.vo.IncomVO;
import com.ezds.erp.vo.UserVO;


@Mapper
public interface IncomMapper {

	List<IncomVO> getIncomList(IncomVO icomVO) throws Exception;
	
}
