package controllers.repository;

import model.entity.JobSeeker;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface JobSeekerRepository extends JpaRepository<JobSeeker, Integer> {

    JobSeeker findByEmail(String email);
}
