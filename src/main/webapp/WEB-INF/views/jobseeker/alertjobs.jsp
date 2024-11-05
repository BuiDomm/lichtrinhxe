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
                        <h1 class="mb-1 fs-3 fw-medium">All Alert Jobs</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item text-muted"><a href="#">Candidate</a></li>
                                <li class="breadcrumb-item text-muted"><a href="#">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="#" class="text-primary">Alert Jobs</a></li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>

            <div class="dashboard-widg-bar d-block">


                <!-- Header Wrap -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                <div class="_mp-inner-content elior">
                                    <div class="_mp-inner-first">
                                        <div class="search-inline">
                                            <input type="text" class="form-control"
                                                   placeholder="Job title, Keywords etc.">
                                            <button type="button" class="btn btn-primary">Search</button>
                                        </div>
                                    </div>
                                    <div class="_mp_inner-last">
                                        <div class="item-shorting-box-right">
                                            <div class="shorting-by me-2 small">
                                                <select>
                                                    <option value="0">Short by (Default)</option>
                                                    <option value="1">Short by (Featured)</option>
                                                    <option value="2">Short by (Urgent)</option>
                                                    <option value="3">Short by (Post Date)</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th scope="col">Title</th>
                                            <th scope="col">Category</th>
                                            <th scope="col">Found jobs</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>Jr. Web Designer</td>
                                            <td>Software</td>
                                            <td>06 jobs</td>
                                            <td>
                                                <a href="JavaScript:Void(0);"
                                                   class="btn btn-md btn-light-danger px-3 me-2"><i
                                                        class="fa-solid fa-xmark"></i></a>
                                                <a href="JavaScript:Void(0);" class="btn btn-md btn-light-success px-3"><i
                                                        class="fa-solid fa-eye"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>IOS Developer</td>
                                            <td>Application</td>
                                            <td>04 jobs</td>
                                            <td>
                                                <a href="JavaScript:Void(0);"
                                                   class="btn btn-md btn-light-danger px-3 me-2"><i
                                                        class="fa-solid fa-xmark"></i></a>
                                                <a href="JavaScript:Void(0);" class="btn btn-md btn-light-success px-3"><i
                                                        class="fa-solid fa-eye"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>SEO Specialist</td>
                                            <td>SEO/SMO</td>
                                            <td>02 jobs</td>
                                            <td>
                                                <a href="JavaScript:Void(0);"
                                                   class="btn btn-md btn-light-danger px-3 me-2"><i
                                                        class="fa-solid fa-xmark"></i></a>
                                                <a href="JavaScript:Void(0);" class="btn btn-md btn-light-success px-3"><i
                                                        class="fa-solid fa-eye"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Magento Developer</td>
                                            <td>Developer</td>
                                            <td>06 jobs</td>
                                            <td>
                                                <a href="JavaScript:Void(0);"
                                                   class="btn btn-md btn-light-danger px-3 me-2"><i
                                                        class="fa-solid fa-xmark"></i></a>
                                                <a href="JavaScript:Void(0);" class="btn btn-md btn-light-success px-3"><i
                                                        class="fa-solid fa-eye"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Front-end Designer</td>
                                            <td>Web Design</td>
                                            <td>03 jobs</td>
                                            <td>
                                                <a href="JavaScript:Void(0);"
                                                   class="btn btn-md btn-light-danger px-3 me-2"><i
                                                        class="fa-solid fa-xmark"></i></a>
                                                <a href="JavaScript:Void(0);" class="btn btn-md btn-light-success px-3"><i
                                                        class="fa-solid fa-eye"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Shipify Developer</td>
                                            <td>Application</td>
                                            <td>07 jobs</td>
                                            <td>
                                                <a href="JavaScript:Void(0);"
                                                   class="btn btn-md btn-light-danger px-3 me-2"><i
                                                        class="fa-solid fa-xmark"></i></a>
                                                <a href="JavaScript:Void(0);" class="btn btn-md btn-light-success px-3"><i
                                                        class="fa-solid fa-eye"></i></a>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Header Wrap -->

            </div>

            <!-- footer -->
            <div class="row">
                <div class="col-md-12">
                    <div class="py-3 text-center">© 2015 - 2023 Job Stock® Themezhub.</div>
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