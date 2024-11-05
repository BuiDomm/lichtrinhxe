<!doctype html>
<html lang="en">

<!-- Mirrored from shreethemes.net/jobstock-landing-2.2/jobstock/candidate-dashboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Sep 2024 02:52:38 GMT -->
<%@include file="../include/header.jsp" %>

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
    <%@include file="../include/nav.jsp" %>
    <!-- End Navigation -->
    <div class="clearfix"></div>
    <!-- ============================================================== -->
    <!-- Top header  -->
    <!-- ============================================================== -->

    <!-- ======================= dashboard Detail ======================== -->
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
                        <h1 class="mb-1 fs-3 fw-medium">Candidate Delete Profile</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item text-muted"><a href="#">Candidate</a></li>
                                <li class="breadcrumb-item text-muted"><a href="#">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="#" class="text-primary">Delete Account</a></li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>

            <div class="dashboard-widg-bar d-block">

                <div class="card">
                    <div class="card-header">
                        <h4>Delete Account</h4>
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="row mb-3">
                                <label class="col-xl-12 col-md-12 col-form-label">Enter your password To Delete
                                    Account</label>
                                <div class="col-xl-9 col-md-12">
                                    <input type="text" class="form-control" placeholder="*******">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-xl-12 col-md-12">
                                    <button type="button" class="btn btn-danger">Delete Account</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ======================= dashboard Detail End ======================== -->
    <a id="back2Top" class="top-scroll" title="Back to top" href="#"><i class="ti-arrow-up"></i></a>


</div>
<!-- ============================================================== -->
<!-- End Wrapper -->
<!-- ============================================================== -->


<!-- ============================================================== -->
<!-- All Jquery -->
<!-- ============================================================== -->
<%@include file="../include/jquery_footer.jsp" %>


<!-- Morris.js charts -->
<script src="../../assets/js/raphael/raphael.min.js"></script>
<script src="../../assets/js/morris.js/morris.min.js"></script>
<!-- Custom Chart JavaScript -->
<script src="../../assets/js/custom/dashboard.js"></script>
<!-- ============================================================== -->
<!-- This page plugins -->
<!-- ============================================================== -->

</body>

<!-- Mirrored from shreethemes.net/jobstock-landing-2.2/jobstock/candidate-dashboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Sep 2024 02:52:42 GMT -->
</html>