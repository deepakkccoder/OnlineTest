package com.pm.onlinetest.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pm.onlinetest.domain.Grade;
import com.pm.onlinetest.service.GradeService;
import com.pm.onlinetest.util.GradesWrapper;

@Controller
@RequestMapping("/grading")
public class GradingController {
	
	
	@Autowired
	GradeService gradeService;
	
	@RequestMapping(value="", method = RequestMethod.GET)
	public String show(Locale locale, Model model) {
		
		Iterable<Grade> grades = gradeService.findAll();
		
		model.addAttribute("grades", grades);
		return "grading";
		
	}
	
}
