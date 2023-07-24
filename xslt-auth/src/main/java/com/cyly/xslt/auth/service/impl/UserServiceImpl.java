package com.cyly.xslt.auth.service.impl;

import com.cyly.xslt.auth.model.SecurityUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Collection;

/**
 * 用户管理业务类
 */
@Service
public class UserServiceImpl implements UserDetailsService {

    @Autowired
    private HttpServletRequest request;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public UserDetails loadUserByUsername(String name) throws UsernameNotFoundException {
//        String clientId = request.getParameter("client_id");
//        if (clientId.equals("client-web")) {
//
//        }
//        SecurityUser securityUser = new SecurityUser();
//        securityUser.setUsername("admin");
//        securityUser.setPassword("admin123");
//        securityUser.setId(1L);
//        return securityUser;
        SimpleGrantedAuthority sim = new SimpleGrantedAuthority("admin");
        Collection<SimpleGrantedAuthority> authorities = new ArrayList<>();
        authorities.add(sim);
        return new SecurityUser(1L,"admin", passwordEncoder.encode("admin123"), authorities);
    }
}
