package com.pm.onlinetest.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pm.onlinetest.domain.Authority;
import com.pm.onlinetest.domain.User;
import com.pm.onlinetest.repository.AuthorityRepository;
import com.pm.onlinetest.service.AuthorityService;

@Service
@Transactional
public class AuthorityServiceImpl implements AuthorityService {

	@Autowired
	private AuthorityRepository authorityRepository;

	@Override
	public void save(Authority authority) {
		// TODO Auto-generated method stub
		authorityRepository.save(authority);
	}

	@Override
	public void delete(Authority authority) {
		// TODO Auto-generated method stub
		authorityRepository.delete(authority);
	}

	@Override
	public void delete(List<Authority> authorities) {
		// TODO Auto-generated method stub
		for(Authority authority: authorities){
			authorityRepository.delete(authority);
		}
	}

//	@Override
//	public List<Authority> findByUser(User user) {
//		// TODO Auto-generated method stub
//		return authorityRepository.findByUser(user);
//	}

	
}
