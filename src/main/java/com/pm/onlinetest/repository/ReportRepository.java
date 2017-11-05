package com.pm.onlinetest.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.pm.onlinetest.domain.Report;

/**
 * Repository interface for Report model/domain
 * @author wei.zhou
 *
 */
public interface ReportRepository extends CrudRepository<Report, Integer>{
	
	@Query("SELECT r FROM Report r WHERE r.id =:reportId")
	Report findByReportId(@Param("reportId") Integer reportId);
	
	@Query("SELECT * FROM Report")
	List<Report> getAllReports();
	
}
