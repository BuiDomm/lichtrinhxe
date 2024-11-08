package controllers;

import controllers.service.AuthenticateService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Optional;
import javax.mail.MessagingException;

@Controller
public class Authenticate {

    @Autowired
    private AuthenticateService authenticateService;

    @GetMapping("/signup")
    public String signup(Model model) {
        return "authenticate/signup";
    }

    @PostMapping("/signup")
    public String register(@RequestParam String email, @RequestParam String password, @RequestParam String confirmPassword, Model model) {
        String message = authenticateService.registerJobSeeker(email, password, confirmPassword);
        if ("Đăng ký thành công!".equals(message)) {
            return "redirect:/login";
        } else {
            model.addAttribute("error", message);
            return "authenticate/signup";
        }
    }

    @PostMapping("/login")
    public String login(@RequestParam String email, @RequestParam String password, @RequestParam String userType, HttpSession session, Model model) {
        Optional<Object> user = authenticateService.login(email, password, userType);
        if (user.isPresent()) {
            session.setAttribute("user", user.get());
            session.setAttribute("userType", userType);
            return "redirect:/";
        } else {
            session.setAttribute("message", "Incorrect email or password!");
            return "redirect:/login";
        }
    }

    @PostMapping("/forgotpass")
    public String handleForgotPass(@RequestParam String email, Model model, HttpSession session) throws MessagingException {
        String verificationCode = authenticateService.sendVerificationCode(email);
        model.addAttribute("verificationCode", verificationCode);
        model.addAttribute("email", email);
        return "authenticate/verifycode";
    }

    @PostMapping("/newpass")
    public String resetPassword(@RequestParam String email, @RequestParam String password, @RequestParam String confirmPassword, Model model, HttpSession session) {
        String message = authenticateService.resetPassword(email, password, confirmPassword);
        if ("Đặt lại mật khẩu thành công!".equals(message)) {
            session.setAttribute("message", "Password reset successful! Please log in with your new password.");
            return "redirect:/login";
        } else {
            model.addAttribute("error", message);
            return "authenticate/newpass";
        }
    }

    // Các phương thức khác...
}
