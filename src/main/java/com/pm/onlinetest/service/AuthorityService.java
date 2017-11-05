package com.pm.onlinetest.service;

import java.util.List;

import com.pm.onlinetest.domain.Authority;
import com.pm.onlinetest.domain.User;

 
public interface AuthorityService {

	public void save(Authority authority);
	public void delete(Authority authority);
	public void delete(List<Authority> authorities);
	//public List<Authority> findByUser(User user);
 }
