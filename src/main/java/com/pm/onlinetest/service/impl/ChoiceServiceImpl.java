package com.pm.onlinetest.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.pm.onlinetest.domain.Choice;
import com.pm.onlinetest.domain.Question;
import com.pm.onlinetest.repository.ChoiceRepository;
import com.pm.onlinetest.service.ChoiceService;

@Service

public class ChoiceServiceImpl implements ChoiceService {
	@Autowired
	ChoiceRepository choiceRepository;

	@Override
	public void save(Choice choice) {
		choiceRepository.save(choice);
	}

	@Override
	public List<Choice> findAll() {
		return (List<Choice>) choiceRepository.findAll();
	}

	@Override
	public Choice findOne(Integer id) {
		return choiceRepository.findOne(id);
	}

	@Override
	public void delete(Choice choice) {
		choiceRepository.delete(choice);
	}

	@Override
	public void save(List<Choice> choices) {
		// TODO Auto-generated method stub
		choiceRepository.save(choices);
	}

	@Override
	public List<Choice> findByQuestions(Question question) {
		List<Choice> choice = choiceRepository.findByQuestion(question);
		return choice;
	}

}
