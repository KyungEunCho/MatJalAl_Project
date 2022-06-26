package com.example.demo.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

// EnableWebSequrity : 아래 구현하는 시큐리티 필터를 사용
// Configuration : 설정파일로 등록
@EnableWebSecurity
@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {
// 회원가입 비밀번호 암호화 (sequrity 사용)	
	@Bean
	public BCryptPasswordEncoder encodePwd() {
		return new BCryptPasswordEncoder();
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();
		
		http.authorizeRequests()
		.antMatchers("/admin/**").hasRole("ADMIN")
		.antMatchers("/user/**").hasAnyRole("ADMIN, USER")
		.anyRequest().permitAll()
		.and()
			.formLogin()
			.loginPage("/") // 권한이 없는데 권한이 필요한 페이지로 이동시 "/" 페이지로 이동 ..?
			.loginProcessingUrl("/login") // 실제 로그인을 처리할 주소
		.and()
			.logout()
			.logoutSuccessUrl("/myFeed") // 로그아웃 성공시 이동할 페이지
		;
	}
}
