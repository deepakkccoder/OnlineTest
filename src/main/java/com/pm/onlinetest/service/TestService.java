package com.pm.onlinetest.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pm.onlinetest.domain.Assignment;
import com.pm.onlinetest.domain.Test;

public interface TestService {
	
	public void save(Test test);
	public List<Test> findAll();
	public List<Test> findByAssignment(Assignment assignment);
	public Test findOne(Integer id);
}
