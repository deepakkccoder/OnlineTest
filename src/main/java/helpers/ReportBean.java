package helpers;

import java.time.LocalDateTime;

import com.pm.onlinetest.domain.User;

/**
 * UI bean for report info (consist by querying several models)
 * @author wei.zhou
 *
 */
public class ReportBean {
	// from Student model
	private String studentId;
	private String firstname;
	private String lastname;
	private String email;
	private String AssignmentId;
	private String subCategory;
	private int grade;
	private boolean pass;
	private User coach;
	private LocalDateTime startDate;

	private String detail;
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getFirstName() {
		return firstname;
	}
	public String getLastName() {
		return lastname;
	}
	public void setName(String firstname, String lastname) {
		this.firstname = firstname;
		this.lastname = lastname;
	}
	public String getSubCategory() {
		return subCategory;
	}
	public void setSubCategory(String subCategory) {
		this.subCategory = subCategory;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public boolean isPass() {
		return pass;
	}
	public void setPass(boolean pass) {
		this.pass = pass;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getAssignmentId() {
		return AssignmentId;
	}
	public void setAssignmentId(String assignmentId) {
		AssignmentId = assignmentId;
	}
	public User getCoach() {
		return coach;
	}
	public void setCoach(User coach) {
		this.coach = coach;
	}
	public LocalDateTime getStartDate() {
		return startDate;
	}
	public void setStartDate(LocalDateTime startDate) {
		this.startDate = startDate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	
	
}
