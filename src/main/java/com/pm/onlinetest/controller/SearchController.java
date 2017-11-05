package com.pm.onlinetest.controller;

import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pm.onlinetest.domain.Assignment;
import com.pm.onlinetest.domain.Question;
import com.pm.onlinetest.domain.Subcategory;
import com.pm.onlinetest.domain.Test;
import com.pm.onlinetest.service.AssignmentService;
import com.pm.onlinetest.service.SearchService;

@Controller
@RequestMapping("/search")
public class SearchController {

	@Autowired
	SearchService searchService;
	@Autowired
	AssignmentService assignmentService;
	
	@RequestMapping(value = "/questions", method = RequestMethod.POST)
	public void addQuestion() {

	}
	
	@RequestMapping(value = "/questions", method = RequestMethod.GET)
	public String getUsers(Locale locale, Model model) {
		List<Question> questions = searchService.findAll();
		model.addAttribute("questions", questions);
		
		Set<Subcategory> subcats = new HashSet<>(); 
		Assignment assignment = assignmentService.findById(1) ;
		assignment.getTests();

		for(Test test : assignment.getTests()){
			subcats.add(test.getQuestion().getSubcategory());
		}
		
		System.out.println(subcats.toString());
		return "questions";
	}
	
}