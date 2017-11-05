package com.pm.onlinetest.service;

import java.util.List;
import com.pm.onlinetest.domain.Choice;
import com.pm.onlinetest.domain.Question;
public interface ChoiceService {
	public void save(Choice choice);
	public void save(List<Choice> choices);
	public List<Choice> findAll();
	public Choice findOne(Integer id);
	public void delete(Choice choice);
	public List<Choice> findByQuestions(Question question);
}