package com.pm.onlinetest.service;

import java.util.List;

import com.pm.onlinetest.domain.Question;
import com.pm.onlinetest.domain.Subcategory;

public interface QuestionService {
	
	public void save(Question question);
	public void update(Question question);
	public List<Question> findAll();
	public Question findQuestionById(Integer id);
	public void delete(Question question);
	public List<Question> findBySubcategory(Subcategory subcategory);
}
