package com.pm.onlinetest.util;

import java.util.List;

import com.pm.onlinetest.domain.Grade;

public class GradesWrapper {
	
	public List<Grade> grades;

	public List<Grade> getGrades() {
		return grades;
	}

	public void setGrades(List<Grade> grades) {
		this.grades = grades;
	}

	@Override
	public String toString() {
		return "GradesWrapper [grades=" + grades + "]";
	}
	
	
}
