package controllers.service;

import model.entity.Employer;
import model.entity.JobSeeker;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import controllers.util.VerificationCodeGenerator;
import javax.mail.MessagingException;
import java.util.Optional;

@Service
public class AuthenticateService {

    @Autowired
    private JobSeekerService jobSeekerService;

    @Autowired
    private EmployerService employerService;

    @Autowired
    private EmailService emailService;

    @Autowired
    private VerificationCodeGenerator codeGenerator;

    // Đăng ký người dùng mới
    public String registerJobSeeker(String email, String password, String confirmPassword) {
        if (!password.equals(confirmPassword)) {
            return "Mật khẩu không khớp!";
        }

        JobSeeker newJobSeeker = new JobSeeker();
        newJobSeeker.setEmail(email);
        newJobSeeker.setPassword(password);

        jobSeekerService.createJobSeeker(newJobSeeker);
        return "Đăng ký thành công!";
    }

    // Xác thực người dùng
    public Optional<Object> login(String email, String password, String userType) {
        if ("jobSeeker".equals(userType)) {
            JobSeeker jobSeeker = jobSeekerService.findByEmail(email);
            if (jobSeeker != null && password.equals(jobSeeker.getPassword())) {
                return Optional.of(jobSeeker);
            }
        } else if ("employer".equals(userType)) {
            Optional<Employer> employerOpt = employerService.getEmployerByEmail(email);
            if (employerOpt.isPresent() && password.equals(employerOpt.get().getPassword())) {
                return Optional.of(employerOpt.get());
            }
        }
        return Optional.empty();
    }

    // Xử lý quên mật khẩu và gửi mã xác nhận
    public String sendVerificationCode(String email) throws MessagingException {
        JobSeeker jobSeeker = jobSeekerService.findByEmail(email);
        Optional<Employer> employer = employerService.getEmployerByEmail(email);

        if (jobSeeker == null && employer.isPresent()) {
            return "Email không tồn tại trong hệ thống!";
        }

        String verificationCode = codeGenerator.generateVerificationCode();
        emailService.sendVerificationEmail(email, verificationCode);
        return verificationCode;
    }

    // Đặt lại mật khẩu
    public String resetPassword(String email, String password, String confirmPassword) {
        if (!password.equals(confirmPassword)) {
            return "Mật khẩu mới và mật khẩu xác nhận không khớp!";
        }

        JobSeeker jobSeeker = jobSeekerService.findByEmail(email);
        Optional<Employer> employer = employerService.getEmployerByEmail(email);

        if (jobSeeker != null) {
            jobSeeker.setPassword(password);
            jobSeekerService.updateJobSeekerHp(jobSeeker.getId(), jobSeeker);
            return "Đặt lại mật khẩu thành công!";
        } else if (employer.isPresent()) {
            Employer existingEmployer = employer.get();
            existingEmployer.setPassword(password);
            employerService.saveEmployer(existingEmployer);
            return "Đặt lại mật khẩu thành công!";
        }

        return "Email không tồn tại trong hệ thống!";
    }

    // Đổi mật khẩu hiện tại
    public String changePassword(String email, String currentPassword, String newPassword, String confirmPassword, String action) {
        if (!newPassword.equals(confirmPassword)) {
            return "Mật khẩu mới và mật khẩu xác nhận không khớp!";
        }

        if ("jobseeker".equals(action)) {
            JobSeeker jobSeeker = jobSeekerService.findByEmail(email);
            if (jobSeeker != null) {
                if (!jobSeeker.getPassword().equals(currentPassword)) {
                    return "Mật khẩu hiện tại không đúng!";
                }
                jobSeeker.setPassword(newPassword);
                jobSeekerService.updateJobSeekerHp(jobSeeker.getId(), jobSeeker);
                return "Đổi mật khẩu thành công!";
            }
        } else if ("employer".equals(action)) {
            Optional<Employer> employerOpt = employerService.getEmployerByEmail(email);
            if (employerOpt.isPresent()) {
                Employer employer = employerOpt.get();
                if (!employer.getPassword().equals(currentPassword)) {
                    return "Mật khẩu hiện tại không đúng!";
                }
                employer.setPassword(newPassword);
                employerService.saveEmployer(employer);
                return "Đổi mật khẩu thành công!";
            }
        }

        return "Email không hợp lệ!";
    }
}
