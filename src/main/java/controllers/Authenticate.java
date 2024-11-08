package controllers;

import model.entity.Employer;
import model.entity.JobSeeker;
import controllers.service.EmployerService;
import controllers.service.JobSeekerService;
import controllers.util.VerificationCodeGenerator;
import controllers.service.EmailService;
import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Optional;

@Controller
public class Authenticate {

    @Autowired
    private JobSeekerService jobSeekerService; // Để xử lý xác thực và tạo JobSeeker

    @Autowired
    private EmployerService employerService;

    @Autowired
    private EmailService emailService;

    @Autowired
    private VerificationCodeGenerator codeGenerator;

    @GetMapping("/signup")
    public String signup(Model model) {
        return "authenticate/signup"; // Trang đăng ký
    }

    // Xử lý yêu cầu đăng ký
    @PostMapping("/signup")
    public String register(@RequestParam String email, @RequestParam String password, @RequestParam String confirmPassword, Model model) {
        // Kiểm tra mật khẩu và xác nhận mật khẩu có khớp nhau
        if (!password.equals(confirmPassword)) {
            model.addAttribute("error", "Mật khẩu không khớp!");
            return "authenticate/signup"; // Trả về lại trang đăng ký với thông báo lỗi
        }

        // Tạo một JobSeeker mới từ thông tin đăng ký
        JobSeeker newJobSeeker = new JobSeeker();
        newJobSeeker.setEmail(email);
        newJobSeeker.setPassword(password); // Không mã hóa mật khẩu

        // Lưu JobSeeker vào cơ sở dữ liệu
        jobSeekerService.createJobSeeker(newJobSeeker);

        return "redirect:/login"; // Chuyển hướng đến trang đăng nhập sau khi đăng ký thành công
    }

    @GetMapping("/login") // Trang đăng nhập
    public String login(Model model) {
        return "authenticate/login"; // Trang đăng nhập
    }

    @PostMapping("/login")
    public String login(@RequestParam String email,
            @RequestParam String password,
            @RequestParam String userType, // Nhận thêm userType từ form
            HttpSession session,
            Model model) {

        // Kiểm tra theo loại người dùng (userType)
        if ("jobSeeker".equals(userType)) {
            // Xử lý nếu là Job Seeker
            JobSeeker jobSeeker = jobSeekerService.findByEmail(email);
            if (jobSeeker != null && password.equals(jobSeeker.getPassword())) {
                // Nếu JobSeeker tồn tại và mật khẩu đúng, lưu vào session
                session.setAttribute("user", jobSeeker);
                session.setAttribute("userType", "jobSeeker");
                return "redirect:/"; // Chuyển hướng đến trang chủ
            }
        } else if ("employer".equals(userType)) {
            // Xử lý nếu là Employer
            Optional<Employer> employerOpt = employerService.getEmployerByEmail(email);
            if (employerOpt.isPresent()) {
                Employer employer = employerOpt.get();
                if (password.equals(employer.getPassword())) {
                    // Nếu Employer tồn tại và mật khẩu đúng, lưu vào session
                    session.setAttribute("user", employer);
                    session.setAttribute("userType", "employer");
                    return "redirect:/"; // Chuyển hướng đến trang chủ
                }
            }
        }

        // Nếu không tìm thấy cả JobSeeker và Employer, hoặc mật khẩu không đúng
        session.setAttribute("message", "Incorrect email or password!");
        return "redirect:/login"; // Quay lại trang đăng nhập với thông báo lỗi
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        // Xóa thông tin người dùng khỏi session
        session.invalidate();
        return "redirect:/login";
    }

    @GetMapping("/forgotpass")
    public String forgotPass(Model model) {
        return "authenticate/forgotpass";
    }

    @PostMapping("/forgotpass")
    public String handleForgotPass(@RequestParam String email, Model model, HttpSession session) {
        JobSeeker jobSeeker = jobSeekerService.findByEmail(email);
        Optional<Employer> employer = employerService.getEmployerByEmail(email);

        // Nếu cả JobSeeker và Employer đều không tồn tại
        if (jobSeeker == null && employer.isPresent()) {
            session.setAttribute("message", "Email not found in the system!");
            return "redirect:/forgotpass";
        }

        // Generate a random verification code from the VerificationCodeGenerator class
        String verificationCode = codeGenerator.generateVerificationCode();

        // Send verification code email
        try {
            emailService.sendVerificationEmail(email, verificationCode);
            model.addAttribute("verificationCode", verificationCode);
            model.addAttribute("email", email);
        } catch (MessagingException e) {
            session.setAttribute("message", "An error occurred while sending the email. Please try again.");
            return "authenticate/forgotpass";
        }

        model.addAttribute("verificationCode", verificationCode);
        return "authenticate/verifycode";
    }

    @PostMapping("/verifycode")
    public String verifyCode(@RequestParam String email, @RequestParam("code") String code,
            @RequestParam("coderes") String coderes,
            Model model, HttpSession session) {
        // Compare the user-entered code with the sent code
        if (code.equals(coderes)) {
            // If the code matches, redirect to the password change page
            model.addAttribute("email", email);
            return "authenticate/newpass"; // Password change page
        } else {
            // If the code does not match, display an error message
            model.addAttribute("email", email);
            session.setAttribute("message", "The verification code does not match!");
            session.setAttribute("codeError", true);
            return "authenticate/verifycode";
        }
    }

    @GetMapping("/newpass")
    public String newPass(@RequestParam("email") String email, Model model) {
        model.addAttribute("email", email);
        return "authenticate/newpass";
    }

    @PostMapping("/newpass")
    public String resetPassword(@RequestParam("email") String email,
            @RequestParam("password") String password,
            @RequestParam("confirmPassword") String confirmPassword,
            Model model, HttpSession session) {

        // Kiểm tra xem mật khẩu và mật khẩu xác nhận có khớp không
        if (!password.equals(confirmPassword)) {
            session.setAttribute("message", "Passwords do not match!");
            model.addAttribute("email", email);
            return "authenticate/newpass";
        }

        // Tìm kiếm JobSeeker và Employer theo email
        JobSeeker jobSeeker = jobSeekerService.findByEmail(email);
        Optional<Employer> employer = employerService.getEmployerByEmail(email);

        // Nếu JobSeeker tồn tại, cập nhật mật khẩu cho JobSeeker
        if (jobSeeker != null) {
            jobSeeker.setPassword(password);
            jobSeekerService.updateJobSeekerHp(jobSeeker.getId(), jobSeeker);
            session.setAttribute("message", "Password reset successful! Please log in with your new password.");
            session.setAttribute("messageType", "success");
            return "redirect:/login";
        }

        // Nếu Employer tồn tại, cập nhật mật khẩu cho Employer
        if (employer.isPresent()) {
            Employer existingEmployer = employer.get();
            existingEmployer.setPassword(password);
            employerService.saveEmployer(existingEmployer);
            session.setAttribute("message", "Password reset successful! Please log in with your new password.");
            session.setAttribute("messageType", "success");
            return "redirect:/login";
        }

        // Nếu email không tồn tại trong hệ thống
        session.setAttribute("messageType", "error");
        session.setAttribute("message", "Email not found in the system!");
        return "redirect:/forgotpass";
    }

    // Handle password change
    @PostMapping("/changepass")
    public String changePassword(@RequestParam("email") String email,
            @RequestParam("currentPassword") String currentPassword,
            @RequestParam("newPassword") String newPassword,
            @RequestParam("confirmPassword") String confirmPassword,
            @RequestParam("action") String action, // Thêm trường action
            Model model, HttpSession session) {

        // Kiểm tra nếu action là jobseeker
        if ("jobseeker".equals(action)) {
            JobSeeker jobSeeker = jobSeekerService.findByEmail(email);
            if (jobSeeker != null) {
                // Kiểm tra mật khẩu hiện tại
                if (!jobSeeker.getPassword().equals(currentPassword)) {
                    session.setAttribute("messageType", "error");
                    session.setAttribute("message", "Current password is incorrect for JobSeeker!");
                    return "redirect:/jobseeker/changepassword";
                }

                // Kiểm tra xem mật khẩu mới có khớp không
                if (!newPassword.equals(confirmPassword)) {
                    session.setAttribute("messageType", "error");
                    session.setAttribute("message", "New password and confirm password do not match!");
                    return "redirect:/jobseeker/changepassword";
                }

                // Cập nhật mật khẩu
                jobSeeker.setPassword(newPassword);
                jobSeekerService.updateJobSeekerHp(jobSeeker.getId(), jobSeeker);
                session.setAttribute("messageType", "success");
                session.setAttribute("message", "Password changed successfully for JobSeeker!");
                return "redirect:/jobseeker/changepassword";
            }
            // Email không hợp lệ
            session.setAttribute("messageType", "error");
            session.setAttribute("message", "Email invalid!");
            return "redirect:/jobseeker/changepassword";
        } // Kiểm tra nếu action là employer
        else if ("employer".equals(action)) {
            Optional<Employer> employerOpt = employerService.getEmployerByEmail(email);
            if (employerOpt.isPresent()) {
                Employer employer = employerOpt.get();

                // Kiểm tra mật khẩu hiện tại
                if (!employer.getPassword().equals(currentPassword)) {
                    session.setAttribute("messageType", "error");
                    session.setAttribute("message", "Current password is incorrect for Employer!");
                    return "redirect:/employer/employerchangepass";
                }

                // Kiểm tra xem mật khẩu mới có khớp không
                if (!newPassword.equals(confirmPassword)) {
                    session.setAttribute("messageType", "error");
                    session.setAttribute("message", "New password and confirm password do not match!");
                    return "redirect:/employer/employerchangepass";
                }

                // Cập nhật mật khẩu
                employer.setPassword(newPassword);
                employerService.saveEmployer(employer);
                session.setAttribute("messageType", "success");
                session.setAttribute("message", "Password changed successfully for Employer!");
                return "redirect:/employer/employerchangepass";
            }
            // Email không hợp lệ
            session.setAttribute("messageType", "error");
            session.setAttribute("message", "Email invalid!");
            return "redirect:/employer/employerchangepass";
        }

        // Không làm gì nếu action không hợp lệ (có thể log hoặc xử lý khác nếu cần)
        return "redirect:/login";
    }

}
