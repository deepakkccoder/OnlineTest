package com.pm.onlinetest.controller;


import java.time.LocalDateTime;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pm.onlinetest.domain.Assignment;
import com.pm.onlinetest.domain.Student;
import com.pm.onlinetest.domain.User;
import com.pm.onlinetest.service.AssignmentService;
import com.pm.onlinetest.service.CoachService;
import com.pm.onlinetest.service.StudentService;
import com.pm.onlinetest.service.UserService;

@Controller
public class CoachController {

	@Autowired
	CoachService coachService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	AssignmentService assignmentService;
	
	@Autowired
	StudentService studentService;

    @Autowired
    private MailSender mailSender;
	
	
	@RequestMapping(value = "/coach/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {		
		List<Student> students = coachService.findStudentByAcitveJobStatus();
		model.addAttribute("students", students);
		return "coach";
	
	}
	
	@RequestMapping(value = "/coach/home1", method = RequestMethod.POST)
	public String home1(Locale locale, Model model) {		
		List<Student> students = coachService.findStudentByAcitveJobStatus();
		model.addAttribute("students", students);
		return "coach";
	
	}
	

	@RequestMapping(value = "/coach/studentAssignmentDetail/{userId}", method = RequestMethod.GET)
	public String studentAssignmentDetail(@PathVariable("userId") String userId,Locale locale, Model model) {
		
		System.out.println("Student id in detail1: "+userId);
		
		Integer studentId= Integer.parseInt(userId);
		Student student = coachService.findStudentById(studentId);
		Assignment assignment = assignmentService.findByStudentIdByFinish(student);
		if(assignment !=null)
		System.out.println("assignment of finish false is: "+assignment.isFinished());
		
		model.addAttribute("student",student);
		
		if(assignment !=null && assignment.getAccesscode()!=null){
		System.out.println("assignment details accessCode: "+ assignment.getAccesscode());
			
			model.addAttribute("assignment",assignment);
			
			System.out.println("assignment is not null");
		}
		else{
			assignment=null;
			model.addAttribute("assignment",assignment);
			System.out.println("making assignment null");
		}
		
		System.out.println("assignment details accessCode:"+ assignment);
		return "studentAssignmentDetail";
	
	}
	
	
	
	@RequestMapping(value = "/coach/studentAssignmentHistory/{userId}", method = RequestMethod.GET)
	public String studentAssignmentHistory(@PathVariable("userId") String userId,Locale locale, Model model) {
		Student student = studentService.findByStudentId(Integer.parseInt(userId));
		List<Assignment> assignments = assignmentService.findByStudent(student);
		model.addAttribute("assignments",assignments);
		model.addAttribute("student",student);
		return "studentAssignmentHistory";
	
	}
	
	@RequestMapping(value = "/coach/saveAssignment", method = RequestMethod.POST)
	public @ResponseBody String saveAssignment(RedirectAttributes redirectAttr,@RequestParam("userId") String userId,@RequestParam("accessLink") String accessLink,@RequestParam("accessCode") String accessCode) {		
		System.out.println("Student Id in save ASsignment is: "+userId);
		System.out.println("accesscode in save ASsignment is: "+accessCode);
		System.out.println("accessLink in save ASsignment is: "+accessLink);
		
		Assignment assignment ;
		String coachName =  SecurityContextHolder.getContext().getAuthentication().getName();
		User coachModel = userService.findByUsername(coachName);
		System.out.println("coachModel.getUsername()t is: "+coachModel.getUsername());
		
		Student  student = studentService.findByStudentId(Integer.parseInt(userId));
		System.out.println("student.getUsername() is: "+student.getUsername());
		
		assignment = assignmentService.findByAccesscode(accessCode);
		if(assignment !=null ) {
			System.out.println("Assignment Already exist");
			
		}
		
		else {
			assignment = new Assignment();
			System.out.println("Assignment not exist create new one");
		}
		assignment.setAccesscode(accessCode);
		assignment.setCoachId(coachModel);
		assignment.setStudentId(student);
		assignment.setCount(0);
		assignment.setFinished(false);
		
		System.out.println(" Assignment get access codeis: "+assignment.getAccesscode());
		
		assignmentService.saveAssignment(assignment);
	/*	redirectAttr.addFlashAttribute("success", "Test Generated Successfully!");
	   	return "redirect:/coach/home";
*/
		return "success";
	}
	
	
	
	@RequestMapping(value = "/coach/sendEmail", method = RequestMethod.GET)
	public @ResponseBody String sendEmail(@RequestParam("userId") String userId,@RequestParam("accessLink") String accessLink,@RequestParam("accessCode") String accessCode, @RequestParam("email") String email,Locale locale, Model model) {
		System.out.println("email sending");
		SimpleMailMessage message = new SimpleMailMessage();
	    message.setTo(email);
	    message.setReplyTo("false");
	 
	    message.setFrom("mumtestlink@gmail.com");
	    message.setSubject("Test Link");
	    message.setText("The test you can take at this particular link. To access the test you need to enter the access code provided below. "
	    		+ " Please find the link and the access code below: \n"+ "Access Link: "+"https://ots.cs.mum.edu/onlinetest/test" +"\n"+"Access Code: "+ accessCode +"\nAll the best!");
    	mailSender.send(message);
    	String result ="success";
	    return result;
	    
	    
      
	}
	
	@RequestMapping(value = "/coach/changeStudentJobSearchStatus", method = RequestMethod.POST)
	public @ResponseBody String changeStudentJobStatus(@RequestParam("userId") String studentId,@RequestParam("jobSearchStatus") String jobSearchStatus){
		System.out.println("Inside job chnange status in coach controller studentId" +studentId);
		System.out.println("job search status is: "+jobSearchStatus);	
		boolean jobStatus =false;
		if(jobSearchStatus.equals("active")){
			jobStatus=true;
		}
		System.out.println("Inside job chnange status in coach controller studentId" +studentId);
		System.out.println("job search status is: "+jobSearchStatus);		
		Student student = studentService.findByStudentId(Integer.parseInt(studentId));
		student.setJobSearchStatus(jobStatus);
		studentService.save(student);
		return "success";
	}
	
	
	
 
}

