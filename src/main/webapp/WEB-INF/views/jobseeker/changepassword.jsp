<!doctype html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../include/header.jsp" %>

<body class="green-theme">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
    // Check if the message variable and message type are set or not
    document.addEventListener("DOMContentLoaded", (event) => {
        var message = "${message}"; // Message content
        var messageType = "${messageType}"; // Message type, e.g., 'success' or 'error'

        if (message != "") {
            swal({
                title: messageType === "success" ? "Success!" : "Error!",
                text: message,
                icon: messageType === "success" ? "success" : "error",
                button: "OK!",
            });
        }
    });
</script>
<!-- ============================================================== -->
<!-- Preloader -->
<!-- ============================================================== -->
<div id="preloader">
    <div class="preloader"><span></span><span></span></div>
</div>

<!-- ============================================================== -->
<!-- Main wrapper -->
<!-- ============================================================== -->
<div id="main-wrapper">

    <%@include file="../include/nav.jsp" %>
    <div class="clearfix"></div>

    <!-- ======================= Dashboard Detail ======================== -->
    <div class="dashboard-wrap bg-light">
        <a class="mobNavigation" data-bs-toggle="collapse" href="#MobNav" role="button" aria-expanded="false"
           aria-controls="MobNav">
            <i class="fas fa-bars mr-2"></i>Dashboard Navigation
        </a>
        <%@include file="left_nav.jsp" %>

        <div class="dashboard-content">
            <div class="dashboard-tlbar d-block mb-4">
                <div class="row">
                    <div class="colxl-12 col-lg-12 col-md-12">
                        <h1 class="mb-1 fs-3 fw-medium">Change Password</h1>
                    </div>
                </div>
            </div>
            <c:if test="${not empty message}">
                <%
                    session.removeAttribute("message");
                    session.removeAttribute("messageType");
                %>
            </c:if>
            <div class="dashboard-widg-bar d-block">
                <div class="card">
                    <div class="card-header">
                        <h4><i class="bi bi-key-fill"></i> Change Your Password</h4>
                    </div>
                    <div class="card-body">

                        <script>
                            function validatePassword() {
                                const newPassword = document.getElementById('newPassword').value;
                                const confirmPassword = document.getElementById('confirmPassword').value;

                                // Password validation conditions
                                const minLength = /.{8,}/;
                                const upperCase = /[A-Z]/;
                                const lowerCase = /[a-z]/;
                                const digit = /[0-9]/;
                                const specialChar = /[!@#$%^&*(),.?":{}|<>]/;

                                // Check validation
                                if (!minLength.test(newPassword)) {
                                    alert("New password must be at least 8 characters long.");
                                    return false;
                                }
                                if (!upperCase.test(newPassword)) {
                                    alert("New password must contain at least one uppercase letter.");
                                    return false;
                                }
                                if (!lowerCase.test(newPassword)) {
                                    alert("New password must contain at least one lowercase letter.");
                                    return false;
                                }
                                if (!digit.test(newPassword)) {
                                    alert("New password must contain at least one digit.");
                                    return false;
                                }
                                if (!specialChar.test(newPassword)) {
                                    alert("New password must contain at least one special character (e.g., @, #, $, %, &, *).");
                                    return false;
                                }
                                if (newPassword !== confirmPassword) {
                                    alert("New passwords do not match. Please try again.");
                                    return false;
                                }
                                return true;
                            }

                            function togglePasswordVisibility(inputId, eyeIcon) {
                                const input = document.getElementById(inputId);
                                if (input.type === "password") {
                                    input.type = "text";
                                    eyeIcon.classList.remove("bi-eye");
                                    eyeIcon.classList.add("bi-eye-slash");
                                } else {
                                    input.type = "password";
                                    eyeIcon.classList.remove("bi-eye-slash");
                                    eyeIcon.classList.add("bi-eye");
                                }
                            }
                        </script>

                        <form action="${pageContext.request.contextPath}/changepass" method="POST" onsubmit="return validatePassword()">
                            <input type="hidden" id="email" name="email" value="${sessionScope.user.email}"> <!-- The actual email -->
                            <input type="hidden" name="action" value="jobseeker">
                            <!-- Display Email (Read-only) -->
                            <div class="form-group mb-3">
                                <label for="displayEmail"><i class="bi bi-envelope-fill"></i> Email</label>
                                <input type="email" class="form-control" id="displayEmail" value="${sessionScope.user.email}" readonly>
                            </div>

                            <!-- Current Password -->
                            <div class="form-group mb-3">
                                <label for="currentPassword"><i class="bi bi-lock-fill"></i> Current Password</label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="bi bi-shield-lock-fill"></i></span>
                                    <input type="password" class="form-control" id="currentPassword" name="currentPassword" placeholder="Enter your current password" required>
                                    <i class="bi bi-eye position-absolute top-50 end-0 me-3" style="cursor: pointer; transform: translateY(-50%);" onclick="togglePasswordVisibility('currentPassword', this)"></i>
                                </div>
                            </div>

                            <!-- New Password -->
                            <div class="form-group mb-3">
                                <label for="newPassword"><i class="bi bi-lock"></i> New Password</label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="bi bi-lock-fill"></i></span>
                                    <input type="password" class="form-control" id="newPassword" name="newPassword" placeholder="Enter your new password" required>
                                    <i class="bi bi-eye position-absolute top-50 end-0 me-3" style="cursor: pointer; transform: translateY(-50%);" onclick="togglePasswordVisibility('newPassword', this)"></i>
                                </div>
                            </div>

                            <!-- Confirm New Password -->
                            <div class="form-group mb-3">
                                <label for="confirmPassword"><i class="bi bi-check-circle-fill"></i> Confirm New Password</label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="bi bi-check2-square"></i></span>
                                    <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" placeholder="Confirm your new password" required>
                                    <i class="bi bi-eye position-absolute top-50 end-0 me-3" style="cursor: pointer; transform: translateY(-50%);" onclick="togglePasswordVisibility('confirmPassword', this)"></i>
                                </div>
                            </div>

                            <!-- Submit Button -->
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">
                                    <i class="bi bi-save-fill"></i> Change Password
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ======================= Dashboard Detail End ======================== -->
    <a id="back2Top" class="top-scroll" title="Back to top" href="#"><i class="bi bi-arrow-up-circle-fill"></i></a>

</div>
<!-- ============================================================== -->
<!-- End Wrapper -->
<!-- ============================================================== -->

<%@include file="../include/jquery_footer.jsp" %>

<!-- Morris.js charts -->
<script src="../../assets/js/raphael/raphael.min.js"></script>
<script src="../../assets/js/morris.js/morris.min.js"></script>
<!-- Custom Chart JavaScript -->
<script src="../../assets/js/custom/dashboard.js"></script>

</body>

</html>
