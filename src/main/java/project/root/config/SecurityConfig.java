package project.root.config;

import project.root.security.AuthProviderImpl;
import project.root.security.CustomAuthenticationSuccessHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;


@Configuration
@EnableWebSecurity
@ComponentScan("project.root.security")
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    private CustomAuthenticationSuccessHandler authenticationSuccessHandler;

    @Autowired
    public SecurityConfig(CustomAuthenticationSuccessHandler authenticationSuccessHandler) {
        this.authenticationSuccessHandler = authenticationSuccessHandler;
    }

    @Autowired
    AuthProviderImpl authProvider;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                    .antMatchers("/resources/**", "/resources/*").permitAll()
                    .antMatchers("/").authenticated()
                    .antMatchers("/secretPage","/admin").hasRole("ADMIN")
                    .antMatchers("/commonPage").hasRole("USER")
                    .anyRequest().authenticated().and().csrf().disable()
                .formLogin()
                    .loginPage("/login")
                .successHandler(authenticationSuccessHandler)
                    .permitAll()
                .loginProcessingUrl("/login/process")
                    .usernameParameter("username")
//                .successHandler(authenticationSuccessHandler)
                    .failureUrl("/login?error=true")
                .and()
                    .exceptionHandling()
                    .accessDeniedPage("/users")
                .and()
                    .logout();

    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(authProvider);
    }
}
