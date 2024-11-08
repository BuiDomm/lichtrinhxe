package controllers.service;

import model.entity.JobSeeker;
import controllers.repository.JobSeekerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class JobSeekerService {

    @Autowired
    private JobSeekerRepository jobSeekerRepository;

    // Lấy tất cả JobSeekers
    public List<JobSeeker> getAllJobSeekers() {
        return jobSeekerRepository.findAll();
    }

    // Lấy JobSeeker theo ID
    public Optional<JobSeeker> getJobSeekerById(Integer id) {
        return jobSeekerRepository.findById(id);
    }

    // Tạo JobSeeker mới
    public JobSeeker createJobSeeker(JobSeeker jobSeeker) {
        return jobSeekerRepository.save(jobSeeker);
    }

    // Cập nhật JobSeeker
    public JobSeeker updateJobSeeker(Integer id, JobSeeker updatedJobSeeker) {
        if (jobSeekerRepository.existsById(id)) {
            updatedJobSeeker.setId(Math.toIntExact(id)); // Cập nhật ID để đảm bảo không thay đổi
            return jobSeekerRepository.save(updatedJobSeeker);
        }
        return null; // Trả về null nếu không tìm thấy JobSeeker để cập nhật
    }

    // Cập nhật JobSeeker
    public JobSeeker updateJobSeekerHp(Integer id, JobSeeker updatedJobSeeker) {
        if (jobSeekerRepository.existsById(id)) {
            return jobSeekerRepository.save(updatedJobSeeker); // Không cần cập nhật ID nữa
        }
        return null; // Trả về null nếu không tìm thấy JobSeeker để cập nhật
    }

    // Xóa JobSeeker
    public boolean deleteJobSeeker(Integer id) {
        if (jobSeekerRepository.existsById(id)) {
            jobSeekerRepository.deleteById(id);
            return true;
        }
        return false; // Trả về false nếu không tìm thấy JobSeeker để xóa
    }

    // Kiểm tra xem email đã tồn tại hay chưa
    public JobSeeker findByEmail(String email) {
        return jobSeekerRepository.findByEmail(email); // Giả sử bạn đã định nghĩa phương thức này trong repository
    }
}
