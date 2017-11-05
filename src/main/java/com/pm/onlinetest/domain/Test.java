package com.pm.onlinetest.domain;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;



@Entity
public class Test {


 	@Id
    @GeneratedValue
    private Integer id;
	private Integer answer;

	
	@ManyToOne(fetch = FetchType.EAGER)
 	@JoinColumn(name = "assignment_id") 	
	private Assignment assignment;
	
	@ManyToOne(cascade = CascadeType.REMOVE,fetch = FetchType.EAGER)
	@JoinColumn(name = "question_id")
	private Question question;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getAnswer() {

		return answer;
	}

	public void setAnswer(Integer answer) {

		this.answer = answer;
	}

	public Assignment getAssignment() {
		return assignment;
	}

	public void setAssignment(Assignment assignment) {
		this.assignment = assignment;
	}

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	

	
	
}
