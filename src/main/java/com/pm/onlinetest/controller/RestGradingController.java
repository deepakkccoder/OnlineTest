package com.pm.onlinetest.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.pm.onlinetest.domain.Grade;
import com.pm.onlinetest.service.GradeService;
import com.pm.onlinetest.util.GradesWrapper;

@RestController
public class RestGradingController {
	
	@Autowired
	GradeService gradeService;
	
	@RequestMapping(value="/grading/save", method = RequestMethod.POST)
	public @ResponseBody String update(@RequestBody GradesWrapper gradeswrapper) {		
		gradeService.saveAll(gradeswrapper.getGrades());
		
		return "ok";
	}

}
