package br.com.atacadao.solucoesnfe.conf;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;


@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Autowired	
	private UserDetailsService users;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(users).passwordEncoder(new BCryptPasswordEncoder());
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()			
						.antMatchers("/").permitAll()
						.antMatchers("/buscador/").permitAll()
						.antMatchers("/buscador/busca-status").permitAll()
						.antMatchers("/buscador/acesso-restrito").hasAuthority("ADMIN")
						.antMatchers("/status/form").hasAuthority("ADMIN")
						.antMatchers("/resources/css/**").permitAll()		
						.anyRequest().authenticated()
						.and()
						.formLogin().loginPage("/login").permitAll()
						.and()
						.logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
						.and()
						.exceptionHandling()
						.accessDeniedPage("/WEB-INF/views/errors/403.jsp");
					
	}
	
	@Bean
    public PasswordEncoder passwordEncoder() {
        PasswordEncoder encoder = new BCryptPasswordEncoder();
        return encoder;
    }

}
