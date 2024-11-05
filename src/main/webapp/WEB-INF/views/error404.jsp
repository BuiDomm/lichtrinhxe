<!doctype html>
<html lang="en">

<!-- Mirrored from shreethemes.net/jobstock-landing-2.2/jobstock/404.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Sep 2024 02:52:53 GMT -->
<%@include file="include/header.jsp" %>

<body class="green-theme">

<!-- ============================================================== -->
<!-- Preloader - style you can find in spinners.css -->
<!-- ============================================================== -->
<div id="preloader">
    <div class="preloader"><span></span><span></span></div>
</div>

<!-- ============================================================== -->
<!-- Main wrapper - style you can find in pages.scss -->
<!-- ============================================================== -->
<div id="main-wrapper">

    <!-- ============================================================== -->
    <!-- Top header  -->
    <!-- ============================================================== -->
    <!-- Start Navigation -->
    <%@include file="include/nav.jsp" %>
    <!-- End Navigation -->
    <div class="clearfix"></div>
    <!-- ============================================================== -->
    <!-- Top header  -->
    <!-- ============================================================== -->

    <!-- ============================ User Dashboard ================================== -->
    <section class="error-wrap">
        <div class="container">
            <div class="row justify-content-center">

                <div class="col-lg-6 col-md-10">
                    <div class="text-center">
                        <img src="../assets/img/404.png" class="img-fluid" alt="">
                        <p class="fs-6">${errorMessage}</p>
                        <p class="fs-6">${statusCode}</p>
                        <a class="btn btn-primary" href="/">Back To Home</a>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!-- ============================ User Dashboard End ================================== -->

    <!-- ============================ Call To Action ================================== -->
    <section class="bg-cover primary-bg-dark" style="background:url(../assets/img/footer-bg-dark.png)no-repeat;">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-7 col-lg-10 col-md-12 col-sm-12">

                    <div class="call-action-wrap">
                        <div class="sec-heading center">
                            <h2 class="lh-base mb-3 text-light">Find The Perfect Job<br>on Job Stock That is Superb For
                                You</h2>
                            <p class="fs-6 text-light">At vero eos et accusamus et iusto odio dignissimos ducimus qui
                                blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas
                                molestias</p>
                        </div>
                        <div class="call-action-buttons mt-3">
                            <a href="JavaScript:Void(0);" class="btn btn-lg btn-dark fw-medium px-xl-5 px-lg-4 me-2">Upload
                                resume</a>
                            <a href="JavaScript:Void(0);"
                               class="btn btn-lg btn-whites fw-medium px-xl-5 px-lg-4 text-primary">Join Our Team</a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!-- ============================ Call To Action End ================================== -->

    <!-- ============================ Footer Start ================================== -->
    <%@include file="include/footer.jsp" %>
    <!-- ============================ Footer End ================================== -->

    <!-- Log In Modal -->
    <%@include file="modal/login.jsp" %>
    <!-- End Modal -->


    <a id="back2Top" class="top-scroll" title="Back to top" href="#"><i class="ti-arrow-up"></i></a>


</div>
<!-- ============================================================== -->
<!-- End Wrapper -->
<!-- ============================================================== -->

<!-- Color Switcher -->
<%@include file="include/color_switch.jsp" %>


<!-- ============================================================== -->
<!-- All Jquery -->
<!-- ============================================================== -->
<%@include file="include/jquery_footer.jsp" %>
<!-- ============================================================== -->
<!-- This page plugins -->
<!-- ============================================================== -->

</body>

<!-- Mirrored from shreethemes.net/jobstock-landing-2.2/jobstock/404.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Sep 2024 02:52:54 GMT -->
</html>