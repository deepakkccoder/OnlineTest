package com.pm.onlinetest.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.pm.onlinetest.domain.Choice;
import com.pm.onlinetest.domain.Question;
public interface ChoiceRepository extends CrudRepository<Choice, Integer>{

	@Query("SELECT c FROM Choice c WHERE c.question =:question")
	List<Choice> findByQuestion(@Param("question") Question question);
}
