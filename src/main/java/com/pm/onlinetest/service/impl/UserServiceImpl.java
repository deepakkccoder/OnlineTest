package com.pm.onlinetest.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pm.onlinetest.domain.Authority;
import com.pm.onlinetest.domain.User;
import com.pm.onlinetest.repository.UserRepository;
import com.pm.onlinetest.repository.AuthorityRepository;
import com.pm.onlinetest.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private AuthorityRepository authorityRepository;

	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public void save(User user) {

		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String encodedPassword = passwordEncoder.encode(user.getPassword());
		String role = user.getAuthorities().get(0).getAuthority();
		user.setAuthorities(null);
		user.setPassword(encodedPassword);
		user.setEnabled(true);
		userRepository.save(user);
		Authority authority = new Authority();
		authority.setUserId(user.getUserId());
		authority.setAuthority(role);
		authorityRepository.save(authority);
		
	}

	@Override
	public List<User> findAllEnabled() {
		return (List<User>) userRepository.findAllEnabled();
	}

	@Override
	public User findByUsername(String username) {
		// TODO Auto-generated method stub
		return userRepository.findByUsername(username);
	}
	
	@Override
	public User findByUserId(Integer userId) {
		// TODO Auto-generated method stub
		return userRepository.findByUserId(userId);
	}
	@Override
	public void delete(User user) {
		// TODO Auto-generated method stub
		userRepository.delete( user);
	}

	@Override
	public List<User> findByAuthority(String authority) {
		// TODO Auto-generated method stub
		return userRepository.findByAuthority(authority);
	}

	@Override
	public void softDelete(Integer userId) {
		// TODO Auto-generated method stub
		userRepository.softDelete(userId);
	}

	@Override
	public User findByUsernameExceptThis(String username, Integer userId) {
		// TODO Auto-generated method stub
		return userRepository.findByUsernameExceptThis(username, userId);
	}

}
