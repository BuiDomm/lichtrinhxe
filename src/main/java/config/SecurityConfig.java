//package com.example.demo.config;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.web.SecurityFilterChain;
//
//@Configuration
//@EnableWebSecurity
//public class SecurityConfig {
//
//    @Bean
//    public BCryptPasswordEncoder passwordEncoder() {
//        return new BCryptPasswordEncoder();
//    }
//
//    @Bean
//    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
//        http.authorizeHttpRequests(authorizeRequests ->
//                        authorizeRequests
//                                .requestMatchers("/jobseeker/**", "/employer/**").authenticated() // Yêu cầu xác thực cho các trang này
//                                .anyRequest().permitAll() // Tất cả các yêu cầu khác không cần xác thực
//                )
//                .formLogin(form ->
//                        form
//                                .loginPage("/login") // Trang đăng nhập tùy chỉnh
//                                .permitAll() // Cho phép mọi người truy cập vào trang đăng nhập
//                )
//                .logout(logout ->
//                        logout.permitAll() // Cho phép mọi người đăng xuất
//                );
//
//        return http.build();
//    }
//}
