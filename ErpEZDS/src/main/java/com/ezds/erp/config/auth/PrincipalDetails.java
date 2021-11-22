package com.ezds.erp.config.auth;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.ezds.erp.vo.UserVO;

public class PrincipalDetails implements UserDetails{
	
	private UserVO user	;
	
	public PrincipalDetails(UserVO user) {
		this.user = user;
		if(this.user == null) {
			System.out.println("NULL  : " + user);
		}
		System.out.println("principal  : " + this.user);
	}
	//해당user의 권한을 리턴
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		Collection<GrantedAuthority> collect = new ArrayList<>();
		collect.add(new GrantedAuthority() {
			
			@Override
			public String getAuthority() {
				return user.getUserRole();
			}
		});
		
		return collect;
	}

	@Override
	public String getPassword() {
		return user.getUserPw();
	}

	@Override
	public String getUsername() {
		return user.getUserEmail();
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		//우리 사이트 1년동안 로그인 안할 경우 / 휴면 계정 
		return true;
	}

}
