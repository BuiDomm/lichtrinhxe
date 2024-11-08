package controllers;


import model.entity.JobPosting;
import controllers.service.JobsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

import java.util.List;

@Controller
@RequestMapping("/job")
public class JobController {
  @Autowired
  private JobsService JobsService;
  @GetMapping("/job-details/{id}")
  public String jobDetails(@PathVariable String  id, Model model) {
    // Lấy thông tin chi tiết của công việc dựa trên ID
    Integer jobId = Integer.parseInt(id);
    JobPosting job = JobsService.getJobById(jobId).orElse(null);

    // Kiểm tra nếu không tìm thấy công việc nào với ID này
    if (job == null) {
      return "error404"; // Chuyển hướng đến trang lỗi nếu không tìm thấy
    }

    // Đưa chi tiết công việc vào model để hiển thị trong trang job-details.jsp
    model.addAttribute("job", job);

    // Trả về tên của trang JSP (job/job-details.jsp)
    return "job/job-details";
  }

  @GetMapping("/job-list")
  public String jobList(Model model) {
    // Lấy danh sách tất cả các công việc từ JobsService

    List<JobPosting> jobsList = JobsService.getAllJobsWithEmployer();

    // Đưa danh sách công việc vào model để hiển thị trên trang JSP
    model.addAttribute("jobsList", jobsList);

    // Trả về tên của trang JSP (job/job-list.jsp)
    return "job/job-list";
  }
}