package com.sejong.newbluebrick.config;


// https://docs.spring.io/spring-security/site/docs/current/reference/html/jc.html
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;

@Configuration
@EnableWebSecurity
public class AppSecurityConfig extends WebSecurityConfigurerAdapter {

	@Value("${admin.id}")
	String adminId;
	
	@Value("${admin.password}")
	String adminPw;
	
	
	 @Autowired
	 public void configureGlobal(AuthenticationManagerBuilder authentication) throws Exception {
		 
	  authentication.inMemoryAuthentication()
	  .passwordEncoder(NoOpPasswordEncoder.getInstance())
	   .withUser(adminId).password(adminPw).roles("ADMIN");
	 }
	 
	 @Override
	 protected void configure(HttpSecurity http) throws Exception {
		 
		 http
		 	.headers().frameOptions().disable()  // 네이버 스마트 에디터 때문에 추가함
		 	.and()
	        .authorizeRequests()
	            .antMatchers("/admin/**").hasRole("ADMIN")
	            .and()
	        .formLogin()
	            .loginPage("/admin/login")
	            .successForwardUrl("/admin/loginSuccess") // POST ALLOW NEED
	            .permitAll()
	            .and()
			.logout()
		 		.logoutUrl("/admin/logout")
		 		.logoutSuccessUrl("/admin/login?logout");
//		 		.and()
//		 	.csrf().ignoringAntMatchers("/admin/naverImageUpload/**");
		 	
	 }

	 
}
