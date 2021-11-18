package com.ezds.erp.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;


@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(securedEnabled = true , prePostEnabled =true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	@Qualifier("dataSource")
	private DataSource dataSource;
	 
	 
	@Override
	public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/static/**");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
    	
    	http.csrf().disable();
    	
    	
    	http.authorizeRequests()
               .antMatchers("/user/**").authenticated()
               .antMatchers("/Manager/**").access("hasRole('ROLE_MANAGER') or hasRole('ROLE_ADMIN')")
               .antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')")
               .anyRequest().permitAll()
               .and()
               .formLogin()
               .loginPage("/loginForm")
               .loginProcessingUrl("/login")
               .defaultSuccessUrl("/");
             
             /* 자동 로그인 설정 */
             http.rememberMe()
               .key("zenith") //쿠키에 사용되는 값을 암호화하기 위한 키(key)값
               .tokenRepository(persistentTokenRepository()) //DataSource 추가
               .tokenValiditySeconds(604800); //토큰 유지 시간(초단위) - 일주일

             /* 로그아웃 설정 */
             http.logout()
               .logoutUrl("/logout")
               .logoutSuccessUrl("/")
               .invalidateHttpSession(true) //세션 삭제
               .deleteCookies("remember-me", "JSESSIONID"); //자동 로그인 쿠키, Tomcat이 발급한 세션 유지 쿠키 삭제
        
    }
    
    
    @Bean
    public BCryptPasswordEncoder encodePwd() {
        return new BCryptPasswordEncoder();
    }
    
    @Bean
    public PersistentTokenRepository persistentTokenRepository() {
    	JdbcTokenRepositoryImpl repo = new JdbcTokenRepositoryImpl();
    	repo.setDataSource(dataSource);
    	return repo;
    }
    


}