package controllers.service;
import model.entity.JobPosting;
import controllers.repository.JobsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
@Service
public class JobsService {
        @Autowired
        private JobsRepository jobsRepository;
        public List<JobPosting> getAllJobs() {
            return jobsRepository.findAll();
        }
        public Optional<JobPosting> getJobById(Long id) {
            return jobsRepository.findById(id);
        }
        public JobPosting saveJob(JobPosting job) {
            return jobsRepository.save(job);
        }
        public void deleteJob(Long id) {
            jobsRepository.deleteById(id);
        }
    public List<JobPosting> getAllJobsWithEmployer() {
        return jobsRepository.findAllWithEmployer();
    }
}
