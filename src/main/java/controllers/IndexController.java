package controllers;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

    @GetMapping({"/home", "/"}) // Mapping cho trang chính
    public String home(Model model) {
        model.addAttribute("message", "Welcome to my Spring Boot application!");
        return "index"; // Trả về tệp index.jsp trong /WEB-INF/views/
    }

    @GetMapping("/cv") // Mapping cho trang chính
    public String homeCV(Model model) {
        model.addAttribute("message", "Welcome to my Spring Boot application!");
        return "cv"; // Trả về tệp index.jsp trong /WEB-INF/views/
    }

    @GetMapping("/error")
    public String handleError(HttpServletRequest request, Model model) {
        // Lấy mã lỗi HTTP từ request
        Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);

        // Khởi tạo thông điệp lỗi mặc định
        String errorMessage = "Sorry, something went wrong.";

        if (status != null) {
            Integer statusCode = Integer.valueOf(status.toString());

            // Xử lý các mã lỗi HTTP cụ thể
            if (statusCode == HttpStatus.NOT_FOUND.value()) {
                errorMessage = "Error 404: Page not found.";
            } else if (statusCode == HttpStatus.INTERNAL_SERVER_ERROR.value()) {
                errorMessage = "Error 500: Internal server error.";
            } else if (statusCode == HttpStatus.FORBIDDEN.value()) {
                errorMessage = "Error 403: Forbidden access.";
            } else if (statusCode == HttpStatus.BAD_REQUEST.value()) {
                errorMessage = "Error 400: Bad request.";
            }

            // Đưa mã lỗi và thông điệp lỗi vào model
            model.addAttribute("statusCode", statusCode);
        }

        // Đưa thông điệp lỗi vào model
        model.addAttribute("errorMessage", errorMessage);

        // Trả về trang lỗi tùy chỉnh
        return "error404"; // Trả về tệp error404.jsp trong /WEB-INF/views/
    }
}
