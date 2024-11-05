package controllers;

import model.entity.JobSeeker;
import controllers.service.JobSeekerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/jobseeker")
public class JobSeekerController {

    @Autowired
    private JobSeekerService jobSeekerService;

    @GetMapping()
    public String home(Model model) {
        return "jobseeker/dashboard"; // Trang Dashboard
    }

    @GetMapping("/myprofile")
    public String profile(Model model) {
        return "jobseeker/myprofile"; // Trang thông tin cá nhân
    }

    @GetMapping("/resumes")
    public String resume(Model model) {
        return "jobseeker/myresume"; // Trang quản lý sơ yếu lý lịch
    }

    @GetMapping("/appliedjobs")
    public String applyjob(Model model) {
        return "jobseeker/myappliedjobs"; // Trang công việc đã ứng tuyển
    }

    @GetMapping("/alertjobs")
    public String alertjobs(Model model) {
        return "jobseeker/alertjobs"; // Trang thông báo công việc
    }

    @GetMapping("/shortlistjobs")
    public String shortlistjobs(Model model) {
        return "jobseeker/shortlistjobs"; // Trang công việc yêu thích
    }

    @GetMapping("/followingemployers")
    public String followingemployers(Model model) {
        return "jobseeker/followingemployers"; // Trang theo dõi nhà tuyển dụng
    }

    @GetMapping("/messages")
    public String messages(Model model) {
        return "jobseeker/messages"; // Trang tin nhắn
    }

    @GetMapping("/changepassword")
    public String changepassword(Model model) {
        return "jobseeker/changepassword"; // Trang thay đổi mật khẩu
    }

    @GetMapping("/deleteaccount")
    public String deleteaccount(Model model) {
        return "jobseeker/deleteaccount"; // Trang xóa tài khoản
    }

    @GetMapping("/detail")
    public String detail(Model model) {
        return "jobseeker/details"; // Trang xóa tài khoản
    }

    // Lấy danh sách tất cả JobSeeker
    @GetMapping("/index")
    public String getAllJobSeekers(Model model) {
        List<JobSeeker> jobSeekers = jobSeekerService.getAllJobSeekers();
        model.addAttribute("jobSeekers", jobSeekers);
        return "jobseeker/index"; // Trả về trang hiển thị danh sách JobSeeker
    }

    // Lấy JobSeeker theo ID
    @GetMapping("/{id}")
    public String getJobSeekerById(@PathVariable Long id, Model model) {
        Optional<JobSeeker> jobSeeker = jobSeekerService.getJobSeekerById(id);
        if (jobSeeker.isPresent()) {
            model.addAttribute("jobSeeker", jobSeeker.get());
            return "jobseeker/details"; // Trả về trang chi tiết
        }
        return "error404";

    }

    // Tạo mới JobSeeker
    @PostMapping
    public String createJobSeeker(@ModelAttribute JobSeeker jobSeeker) {
        jobSeekerService.createJobSeeker(jobSeeker);
        return "redirect:/jobseeker/index"; // Chuyển hướng sau khi tạo thành công
    }

    // Cập nhật JobSeeker
    @PutMapping("/{id}")
    public String updateJobSeeker(@PathVariable Long id, @ModelAttribute JobSeeker updatedJobSeeker, Model model) {
        Optional<JobSeeker> existingJobSeeker = jobSeekerService.getJobSeekerById(id);
        if (existingJobSeeker.isPresent()) {
            jobSeekerService.updateJobSeeker(id, updatedJobSeeker);
            return "redirect:/jobseeker/index"; // Chuyển hướng sau khi cập nhật thành công
        } else {
            return "error404"; // Trả về trang lỗi nếu không tìm thấy JobSeeker để cập nhật
        }
    }

    // Xóa JobSeeker theo ID
    @DeleteMapping("/{id}")
    public String deleteJobSeeker(@PathVariable Long id) {
        jobSeekerService.deleteJobSeeker(id);
        return "redirect:/jobseeker/index"; // Chuyển hướng sau khi xóa thành công
    }

    
    




}
