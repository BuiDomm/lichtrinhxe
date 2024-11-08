package controllers.repository;

import model.entity.JobPosting;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

@Repository
public interface JobsRepository  extends JpaRepository<JobPosting, Integer> {
    @Query("SELECT j FROM JobPosting j JOIN FETCH j.employer")
    List<JobPosting> findAllWithEmployer();
}
