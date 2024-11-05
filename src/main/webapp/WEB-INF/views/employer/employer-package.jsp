<!doctype html>
<html lang="en">

<!-- Mirrored from shreethemes.net/jobstock-landing-2.2/jobstock/employer-package.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Sep 2024 02:53:13 GMT -->
<%@include file="../include/header.jsp" %>

<body class="green-theme">

<!-- ============================================================== -->
<!-- Preloader - style you can find in spinners.css -->
<!-- ============================================================== -->
<div id="preloader"><div class="preloader"><span></span><span></span></div></div>

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
        <a class="mobNavigation" data-bs-toggle="collapse" href="#MobNav" role="button" aria-expanded="false" aria-controls="MobNav">
            <i class="fas fa-bars mr-2"></i>Dashboard Navigation
        </a>
        <%@include file="dashboard-nav.jsp" %>

        <div class="dashboard-content">
            <div class="dashboard-tlbar d-block mb-4">
                <div class="row">
                    <div class="colxl-12 col-lg-12 col-md-12">
                        <h1 class="mb-1 fs-3 fw-medium">My Package</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item text-muted"><a href="#">Employer</a></li>
                                <li class="breadcrumb-item text-muted"><a href="#">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="#" class="text-primary">My Package</a></li>
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
                                            <input type="text" class="form-control" placeholder="Job title, Keywords etc.">
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
                                            <th scope="col">#</th>
                                            <th scope="col">ID</th>
                                            <th scope="col">Package Name</th>
                                            <th scope="col">Package type</th>
                                            <th scope="col">Description</th>
                                            <th scope="col">Status</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>01</td>
                                            <td>1274</td>
                                            <td>Basic</td>
                                            <td>Job Package</td>
                                            <td>
                                                <div class="package-descr">
                                                    <p class="text-sm-muted mb-1">Featured: Yes</p>
                                                    <p class="text-sm-muted mb-1">Urgent: Yes</p>
                                                    <p class="text-sm-muted mb-1">Posted:04</p>
                                                    <p class="text-sm-muted mb-1">Post Limit: 20</p>
                                                    <p class="text-sm-muted mb-1">Post Duration: 30</p>
                                                </div>
                                            </td>
                                            <td><span class="label text-light bg-success">Active</span></td>
                                        </tr>
                                        <tr>
                                            <td>02</td>
                                            <td>1285</td>
                                            <td>Standard</td>
                                            <td>Job Package</td>
                                            <td>
                                                <div class="package-descr">
                                                    <p class="text-sm-muted mb-1">Featured: Yes</p>
                                                    <p class="text-sm-muted mb-1">Urgent: Yes</p>
                                                    <p class="text-sm-muted mb-1">Posted:02</p>
                                                    <p class="text-sm-muted mb-1">Post Limit: 25</p>
                                                    <p class="text-sm-muted mb-1">Post Duration:40</p>
                                                </div>
                                            </td>
                                            <td><span class="label text-light bg-danger">Expired</span></td>
                                        </tr>
                                        <tr>
                                            <td>03</td>
                                            <td>1274</td>
                                            <td>Platinum</td>
                                            <td>Job Package</td>
                                            <td>
                                                <div class="package-descr">
                                                    <p class="text-sm-muted mb-1">Featured: Yes</p>
                                                    <p class="text-sm-muted mb-1">Urgent: Yes</p>
                                                    <p class="text-sm-muted mb-1">Posted:10</p>
                                                    <p class="text-sm-muted mb-1">Post Limit:40</p>
                                                    <p class="text-sm-muted mb-1">Post Duration:75</p>
                                                </div>
                                            </td>
                                            <td><span class="label text-light bg-success">Active</span></td>
                                        </tr>
                                        <tr>
                                            <td>04</td>
                                            <td>6254</td>
                                            <td>Standard</td>
                                            <td>Job Package</td>
                                            <td>
                                                <div class="package-descr">
                                                    <p class="text-sm-muted mb-1">Featured: Yes</p>
                                                    <p class="text-sm-muted mb-1">Urgent: Yes</p>
                                                    <p class="text-sm-muted mb-1">Posted:07</p>
                                                    <p class="text-sm-muted mb-1">Post Limit: 10</p>
                                                    <p class="text-sm-muted mb-1">Post Duration:15</p>
                                                </div>
                                            </td>
                                            <td><span class="label text-light bg-success">Active</span></td>
                                        </tr>
                                        <tr>
                                            <td>05</td>
                                            <td>3256</td>
                                            <td>Basic</td>
                                            <td>Job Package</td>
                                            <td>
                                                <div class="package-descr">
                                                    <p class="text-sm-muted mb-1">Featured: Yes</p>
                                                    <p class="text-sm-muted mb-1">Urgent: Yes</p>
                                                    <p class="text-sm-muted mb-1">Posted:04</p>
                                                    <p class="text-sm-muted mb-1">Post Limit: 20</p>
                                                    <p class="text-sm-muted mb-1">Post Duration: 30</p>
                                                </div>
                                            </td>
                                            <td><span class="label text-light bg-danger">Expired</span></td>
                                        </tr>
                                        <tr>
                                            <td>06</td>
                                            <td>4215</td>
                                            <td>Basic</td>
                                            <td>Job Package</td>
                                            <td>
                                                <div class="package-descr">
                                                    <p class="text-sm-muted mb-1">Featured: Yes</p>
                                                    <p class="text-sm-muted mb-1">Urgent: Yes</p>
                                                    <p class="text-sm-muted mb-1">Posted:04</p>
                                                    <p class="text-sm-muted mb-1">Post Limit: 20</p>
                                                    <p class="text-sm-muted mb-1">Post Duration: 30</p>
                                                </div>
                                            </td>
                                            <td><span class="label text-light bg-success">Active</span></td>
                                        </tr>
                                        <tr>
                                            <td>07</td>
                                            <td>6254</td>
                                            <td>Platinum</td>
                                            <td>Job Package</td>
                                            <td>
                                                <div class="package-descr">
                                                    <p class="text-sm-muted mb-1">Featured: Yes</p>
                                                    <p class="text-sm-muted mb-1">Urgent: Yes</p>
                                                    <p class="text-sm-muted mb-1">Posted:04</p>
                                                    <p class="text-sm-muted mb-1">Post Limit: 20</p>
                                                    <p class="text-sm-muted mb-1">Post Duration: 30</p>
                                                </div>
                                            </td>
                                            <td><span class="label text-light bg-success">Active</span></td>
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

<!-- Color Switcher -->
<%@include file="../include/color_switch.jsp" %>

<!-- ============================================================== -->
<!-- All Jquery -->
<!-- ============================================================== -->
<%@include file="../include/jquery_footer.jsp" %>
<!-- ============================================================== -->
<!-- This page plugins -->
<!-- ============================================================== -->

</body>

<!-- Mirrored from shreethemes.net/jobstock-landing-2.2/jobstock/employer-package.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Sep 2024 02:53:13 GMT -->
</html>