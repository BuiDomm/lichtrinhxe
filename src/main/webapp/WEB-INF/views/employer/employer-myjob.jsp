<!doctype html>
<html lang="en">

<!-- Mirrored from shreethemes.net/jobstock-landing-2.2/jobstock/employer-jobs.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Sep 2024 02:53:13 GMT -->
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
                        <h1 class="mb-1 fs-3 fw-medium">Manage jobs</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item text-muted"><a href="#">Employer</a></li>
                                <li class="breadcrumb-item text-muted"><a href="#">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="#" class="text-primary">My Jobs</a></li>
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
                                <!-- Row -->
                                <div class="row mb-3">
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="duster-flex-row align-items-center d-flex justify-content-between">
                                            <div class="duster-flex-first">
                                                <h6 class="mb-0">Upgrade Package - 10 Days Left</h6>
                                            </div>
                                            <div class="duster-flex-end">
                                                <ul class="nav nav-pills nav-fill gap-2 p-1 small gray-simple rounded" id="pillNav2" role="tablist">
                                                    <li class="nav-item" role="presentation">
                                                        <button class="nav-link active rounded" id="alls" data-bs-toggle="tab" type="button" role="tab" aria-selected="true">All: 138</button>
                                                    </li>
                                                    <li class="nav-item" role="presentation">
                                                        <button class="nav-link rounded" id="actives" data-bs-toggle="tab" type="button" role="tab" aria-selected="false">Active: 122</button>
                                                    </li>
                                                    <li class="nav-item" role="presentation">
                                                        <button class="nav-link rounded" id="expireds" data-bs-toggle="tab" type="button" role="tab" aria-selected="false">Axpired: 16</button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Row -->

                                <!-- Start All List -->
                                <div class="row justify-content-start gx-3 gy-4">

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb jbs-verified"><a href="job-detail.html"><figure><img src="../../webapp/assets/img/l-1.png" class="img-fluid" alt=""></figure></a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-employer-wrap"><span>Tripadvisor</span></div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html" class="jbs-job-title">Technical Content Writer</a></h4></div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-applied-users">
                                                    <span class="text-sm-muted text-light bg-warning label">244 Applicants</span>
                                                </div>
                                                <div class="jbs-list-postedinfo">
                                                    <p class="m-0 text-sm-muted"><strong>Posted:</strong><span class="text-success">17 Apr 2023</span></p>
                                                    <p class="m-0 text-sm-muted"><strong>Expired:</strong><span class="text-danger">12 Jun 2024</span></p>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="JavaScript:Void(0);" class="rounded btn-md text-success bg-light-success px-3"><i class="fa-solid fa-pencil"></i></a>
                                                    <a href="JavaScript:Void(0);" class="rounded btn-md text-danger bg-light-danger px-3"><i class="fa-solid fa-trash-can"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb jbs-verified"><a href="job-detail.html"><figure><img src="../../webapp/WEB-INF/assets/img/l-2.png" class="img-fluid" alt=""></figure></a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-employer-wrap"><span>Pintrest</span></div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html" class="jbs-job-title">New Shopify Developer</a></h4></div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-applied-users">
                                                    <span class="text-sm-muted text-light bg-info label">110 Applicants</span>
                                                </div>
                                                <div class="jbs-list-postedinfo">
                                                    <p class="m-0 text-sm-muted"><strong>Posted:</strong><span class="text-success">17 Apr 2023</span></p>
                                                    <p class="m-0 text-sm-muted"><strong>Expired:</strong><span class="text-danger">12 Jun 2024</span></p>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="JavaScript:Void(0);" class="rounded btn-md text-success bg-light-success px-3"><i class="fa-solid fa-clock"></i></a>
                                                    <a href="JavaScript:Void(0);" class="rounded btn-md text-danger bg-light-danger px-3"><i class="fa-solid fa-trash-can"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb jbs-verified"><a href="job-detail.html"><figure><img src="../../webapp/WEB-INF/assets/img/l-3.png" class="img-fluid" alt=""></figure></a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-employer-wrap"><span>Shopify</span></div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html" class="jbs-job-title">Sr. Magento Developer</a></h4></div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-applied-users">
                                                    <span class="text-sm-muted text-light bg-info label">320 Applicants</span>
                                                </div>
                                                <div class="jbs-list-postedinfo">
                                                    <p class="m-0 text-sm-muted"><strong>Posted:</strong><span class="text-success">17 Apr 2023</span></p>
                                                    <p class="m-0 text-sm-muted"><strong>Expired:</strong><span class="text-danger">12 Jun 2024</span></p>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="JavaScript:Void(0);" class="rounded btn-md text-success bg-light-success px-3"><i class="fa-solid fa-pencil"></i></a>
                                                    <a href="JavaScript:Void(0);" class="rounded btn-md text-danger bg-light-danger px-3"><i class="fa-solid fa-trash-can"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb jbs-verified"><a href="job-detail.html"><figure><img src="../../webapp/WEB-INF/assets/img/l-4.png" class="img-fluid" alt=""></figure></a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-employer-wrap"><span>Dreezoo</span></div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html" class="jbs-job-title">Sr. Code Ignetor Developer</a></h4></div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-applied-users">
                                                    <span class="text-sm-muted text-light bg-info label">170 Applicants</span>
                                                </div>
                                                <div class="jbs-list-postedinfo">
                                                    <p class="m-0 text-sm-muted"><strong>Posted:</strong><span class="text-success">17 Apr 2023</span></p>
                                                    <p class="m-0 text-sm-muted"><strong>Expired:</strong><span class="text-danger">12 Jun 2024</span></p>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="JavaScript:Void(0);" class="rounded btn-md text-success bg-light-success px-3"><i class="fa-solid fa-pencil"></i></a>
                                                    <a href="JavaScript:Void(0);" class="rounded btn-md text-danger bg-light-danger px-3"><i class="fa-solid fa-trash-can"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb jbs-verified"><a href="job-detail.html"><figure><img src="../../webapp/WEB-INF/assets/img/l-5.png" class="img-fluid" alt=""></figure></a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-employer-wrap"><span>Photoshop</span></div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html" class="jbs-job-title">Java & Python Developer</a></h4></div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-applied-users">
                                                    <span class="text-sm-muted text-light bg-info label">190 Applicants</span>
                                                </div>
                                                <div class="jbs-list-postedinfo">
                                                    <p class="m-0 text-sm-muted"><strong>Posted:</strong><span class="text-success">17 Apr 2023</span></p>
                                                    <p class="m-0 text-sm-muted"><strong>Expired:</strong><span class="text-danger">12 Jun 2024</span></p>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="JavaScript:Void(0);" class="rounded btn-md text-success bg-light-success px-3"><i class="fa-solid fa-pencil"></i></a>
                                                    <a href="JavaScript:Void(0);" class="rounded btn-md text-danger bg-light-danger px-3"><i class="fa-solid fa-trash-can"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb jbs-verified"><a href="job-detail.html"><figure><img src="../../webapp/WEB-INF/assets/img/l-6.png" class="img-fluid" alt=""></figure></a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-employer-wrap"><span>Firefox</span></div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html" class="jbs-job-title">Sr. UI/UX Designer</a></h4></div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-applied-users">
                                                    <span class="text-sm-muted text-light bg-danger label">Expired</span>
                                                </div>
                                                <div class="jbs-list-postedinfo">
                                                    <p class="m-0 text-sm-muted"><strong>Posted:</strong><span class="text-success">17 Apr 2023</span></p>
                                                    <p class="m-0 text-sm-muted"><strong>Expired:</strong><span class="text-danger">12 Jun 2024</span></p>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="JavaScript:Void(0);" class="rounded btn-md text-success bg-light-success px-3"><i class="fa-solid fa-clock"></i></a>
                                                    <a href="JavaScript:Void(0);" class="rounded btn-md text-danger bg-light-danger px-3"><i class="fa-solid fa-trash-can"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb jbs-verified"><a href="job-detail.html"><figure><img src="../../webapp/WEB-INF/assets/img/l-7.png" class="img-fluid" alt=""></figure></a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-employer-wrap"><span>Airbnb</span></div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html" class="jbs-job-title">Jr. Laravel Developer</a></h4></div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-applied-users">
                                                    <span class="text-sm-muted text-light bg-info label">205 Applicants</span>
                                                </div>
                                                <div class="jbs-list-postedinfo">
                                                    <p class="m-0 text-sm-muted"><strong>Posted:</strong><span class="text-success">17 Apr 2023</span></p>
                                                    <p class="m-0 text-sm-muted"><strong>Expired:</strong><span class="text-danger">12 Jun 2024</span></p>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="JavaScript:Void(0);" class="rounded btn-md text-success bg-light-success px-3"><i class="fa-solid fa-pencil"></i></a>
                                                    <a href="JavaScript:Void(0);" class="rounded btn-md text-danger bg-light-danger px-3"><i class="fa-solid fa-trash-can"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb jbs-verified"><a href="job-detail.html"><figure><img src="../../webapp/WEB-INF/assets/img/l-8.png" class="img-fluid" alt=""></figure></a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-employer-wrap"><span>Snapchat</span></div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html" class="jbs-job-title">Sr. WordPress Developer</a></h4></div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-applied-users">
                                                    <span class="text-sm-muted text-light bg-info label">320 Applicants</span>
                                                </div>
                                                <div class="jbs-list-postedinfo">
                                                    <p class="m-0 text-sm-muted"><strong>Posted:</strong><span class="text-success">17 Apr 2023</span></p>
                                                    <p class="m-0 text-sm-muted"><strong>Expired:</strong><span class="text-danger">12 Jun 2024</span></p>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="JavaScript:Void(0);" class="rounded btn-md text-success bg-light-success px-3"><i class="fa-solid fa-pencil"></i></a>
                                                    <a href="JavaScript:Void(0);" class="rounded btn-md text-danger bg-light-danger px-3"><i class="fa-solid fa-trash-can"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb jbs-verified"><a href="job-detail.html"><figure><img src="../../webapp/WEB-INF/assets/img/l-9.png" class="img-fluid" alt=""></figure></a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-employer-wrap"><span>Dribbble</span></div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html" class="jbs-job-title">Exp. Project manager</a></h4></div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-applied-users">
                                                    <span class="text-sm-muted text-light bg-danger label">Expired</span>
                                                </div>
                                                <div class="jbs-list-postedinfo">
                                                    <p class="m-0 text-sm-muted"><strong>Posted:</strong><span class="text-success">17 Apr 2023</span></p>
                                                    <p class="m-0 text-sm-muted"><strong>Expired:</strong><span class="text-danger">12 Jun 2024</span></p>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="JavaScript:Void(0);" class="rounded btn-md text-success bg-light-success px-3"><i class="fa-solid fa-clock"></i></a>
                                                    <a href="JavaScript:Void(0);" class="rounded btn-md text-danger bg-light-danger px-3"><i class="fa-solid fa-trash-can"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb jbs-verified"><a href="job-detail.html"><figure><img src="../../webapp/WEB-INF/assets/img/l-10.png" class="img-fluid" alt=""></figure></a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-employer-wrap"><span>Skype</span></div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html" class="jbs-job-title">Jr. PHP Developer</a></h4></div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-applied-users">
                                                    <span class="text-sm-muted text-light bg-info label">150 Applicants</span>
                                                </div>
                                                <div class="jbs-list-postedinfo">
                                                    <p class="m-0 text-sm-muted"><strong>Posted:</strong><span class="text-success">17 Apr 2023</span></p>
                                                    <p class="m-0 text-sm-muted"><strong>Expired:</strong><span class="text-danger">12 Jun 2024</span></p>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="JavaScript:Void(0);" class="rounded btn-md text-success bg-light-success px-3"><i class="fa-solid fa-pencil"></i></a>
                                                    <a href="JavaScript:Void(0);" class="rounded btn-md text-danger bg-light-danger px-3"><i class="fa-solid fa-trash-can"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <!-- End All Job List -->

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

<!-- Mirrored from shreethemes.net/jobstock-landing-2.2/jobstock/employer-jobs.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Sep 2024 02:53:13 GMT -->
</html>