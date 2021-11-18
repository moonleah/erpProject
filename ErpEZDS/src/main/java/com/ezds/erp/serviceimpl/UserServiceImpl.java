package com.ezds.erp.serviceimpl;

import java.lang.reflect.Member;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ezds.erp.dao.UserDAO;
import com.ezds.erp.service.UserService;
import com.ezds.erp.vo.UserVO;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserDAO userDao;

	@Override
	public UserVO getUser(UserVO userVO) throws Exception {
		// TODO Auto-generated method stub
		return userDao.getUser(userVO);
	}

	@Override
	public void insertUser(UserVO userVO) throws Exception {
		 userDao.insertUser(userVO);
		
	}
	
	

}
