package com.pm.onlinetest.domain;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Grade {
	
	@Id
	private String name;
	private Integer rangeFrom;
	private Integer rangeTo;

	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public Integer getRangeFrom() {
		return rangeFrom;
	}



	public void setRangeFrom(Integer rangeFrom) {
		this.rangeFrom = rangeFrom;
	}



	public Integer getRangeTo() {
		return rangeTo;
	}



	public void setRangeTo(Integer rangeTo) {
		this.rangeTo = rangeTo;
	}
	
	
	@Override
	public String toString() {
		return "Grade [name=" + name + ", rangeFrom=" + rangeFrom + ", rangeTo=" + rangeTo + "]";
	}





	
}
