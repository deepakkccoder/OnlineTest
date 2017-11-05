package com.pm.onlinetest.service;

import java.util.List;

import com.pm.onlinetest.domain.Grade;

public interface GradeService {

	public void save(Grade grade);

	public void saveAll(List<Grade> grades);

	public Iterable<Grade> findAll();
	
	public Grade getGradeFromInteger(Integer x);

	public String getGradeAsStringFromInteger(Integer x);

}
