package com.pm.onlinetest.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pm.onlinetest.domain.Student;
import com.pm.onlinetest.service.AssignmentService;
import com.pm.onlinetest.service.CoachService;
import com.pm.onlinetest.service.StudentService;
import com.pm.onlinetest.service.UserService;

@Controller
@RequestMapping("/assignment")
public class AssignmentController {

	@Autowired
	CoachService coachService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	AssignmentService assignmentService;
	
	@Autowired
	StudentService studentService;
	

	@RequestMapping(value = "/generateTest", method = RequestMethod.GET)
	public @ResponseBody Map<String,String> generateTest(Locale locale, Model model, HttpServletResponse response) {
		

		String accessCode = assignmentService.generateAccesscode();
		String accessLink="www.test.com";
		model.addAttribute("accessCode",accessCode);
		model.addAttribute("accessLink","www.test.com");	
		
		Map<String,String> map = new HashMap<String, String>();
	/*	ArrayList<String> list= new ArrayList<String>();
		list.add(accessCode);
		list.add(accessLink);
	*/	
		map.put("accessCode",accessCode);
		map.put("accessLink",accessLink);
		
		return map;
	}
	 
}
