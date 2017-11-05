package com.pm.onlinetest.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pm.onlinetest.domain.Grade;
import com.pm.onlinetest.domain.Inventory;
import com.pm.onlinetest.repository.GradeRepository;
import com.pm.onlinetest.service.GradeService;

@Service
public class GradeServiceImpl implements GradeService {

	@Autowired
	GradeRepository gradeRepository;

	@Override
	public void save(Grade grade) {
		gradeRepository.save(grade);
	}

	@Override
	public void saveAll(List<Grade> grades) {

		gradeRepository.deleteAll();
		for (Grade grade : grades) {
			
			gradeRepository.save(grade);

			//gradeRepository.replaceGrade(grade.getName(), grade.getRangeFrom(), grade.getRangeTo());
		
		}
		
		
	}

	@Override
	public Iterable<Grade> findAll() {
		// TODO Auto-generated method stub
		return gradeRepository.findAll();
	}

	@Override
	public Grade getGradeFromInteger(Integer x) {

		return gradeRepository.get(x);
	}

	@Override
	public String getGradeAsStringFromInteger(Integer x) {
		return gradeRepository.get(x).getName();
	}

	
}
