package com.pm.onlinetest.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.pm.onlinetest.domain.Question;
import com.pm.onlinetest.domain.Subcategory;


@Repository

public interface QuestionRepository extends CrudRepository<Question, Integer>{
//	 @Modifying
//	    @Query("UPDATE Question q set q.description=:description WHERE q.id = :questionId")
//int  updateQuestion(@Param("questionId") int questionId);
	 
 
	
	public Question findById(Integer id);
	public Question getQuestionById(int id);

	@Query("SELECT q FROM Question q WHERE q.subcategory=:subcategory")
	List<Question> findBySubcategory(@Param("subcategory") Subcategory subcategory);


}
