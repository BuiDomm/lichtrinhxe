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
                        <h1 class="mb-1 fs-3 fw-medium">Following Employers</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item text-muted"><a href="#">Candidate</a></li>
                                <li class="breadcrumb-item text-muted"><a href="#">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="#" class="text-primary">Following Employers</a>
                                </li>
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
                                <!-- Start All List -->
                                <div class="row justify-content-start gx-3 gy-4">

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-12">
                                        <div class="emplors-list-box border">
                                            <div class="emplors-list-head">
                                                <div class="emplors-list-head-thunner">
                                                    <div class="emplors-list-emp-thumb"><a href="employer-detail.html">
                                                        <figure><img src="../../webapp/assets/img/l-1.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="emplors-list-job-caption">
                                                        <div class="emplors-job-types-wrap mb-1"><span
                                                                class="label text-light bg-success">07 Openings</span>
                                                        </div>
                                                        <div class="emplors-job-title-wrap mb-1"><h4><a
                                                                href="employer-detail.html" class="emplors-job-title">Tripadvisor</a>
                                                        </h4></div>
                                                        <div class="emplors-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Software & Consultancy</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>London, UK</span>.<span>Est: 1992</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="emplors-list-head-last">
                                                    <a href="employer-detail.html"
                                                       class="btn btn-md btn-light-primary px-3">View Company</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-12">
                                        <div class="emplors-list-box border">
                                            <div class="emplors-list-head">
                                                <div class="emplors-list-head-thunner">
                                                    <div class="emplors-list-emp-thumb"><a href="employer-detail.html">
                                                        <figure><img src="../../webapp/WEB-INF/assets/img/l-2.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="emplors-list-job-caption">
                                                        <div class="emplors-job-types-wrap mb-1"><span
                                                                class="label text-light bg-success">03 Openings</span>
                                                        </div>
                                                        <div class="emplors-job-title-wrap mb-1"><h4><a
                                                                href="employer-detail.html" class="emplors-job-title">Pinterest
                                                            - Punjab</a></h4></div>
                                                        <div class="emplors-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Photo Showcase & Tools</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>Austrailia</span>.<span>Est: 2003</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="emplors-list-head-last">
                                                    <a href="employer-detail.html"
                                                       class="btn btn-md btn-light-primary px-3">View Company</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-12">
                                        <div class="emplors-list-box border">
                                            <div class="emplors-list-head">
                                                <div class="emplors-list-head-thunner">
                                                    <div class="emplors-list-emp-thumb"><a href="employer-detail.html">
                                                        <figure><img src="../../webapp/WEB-INF/assets/img/l-3.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="emplors-list-job-caption">
                                                        <div class="emplors-job-types-wrap mb-1"><span
                                                                class="label text-light bg-success">05 Openings</span>
                                                        </div>
                                                        <div class="emplors-job-title-wrap mb-1"><h4><a
                                                                href="employer-detail.html" class="emplors-job-title">Shopify
                                                            - Delhi</a></h4></div>
                                                        <div class="emplors-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Web & Applications</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>Canada, USA</span>.<span>Est: 1980</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="emplors-list-head-last">
                                                    <a href="employer-detail.html"
                                                       class="btn btn-md btn-light-primary px-3">View Company</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-12">
                                        <div class="emplors-list-box border">
                                            <div class="emplors-list-head">
                                                <div class="emplors-list-head-thunner">
                                                    <div class="emplors-list-emp-thumb"><a href="employer-detail.html">
                                                        <figure><img src="../../webapp/WEB-INF/assets/img/l-4.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="emplors-list-job-caption">
                                                        <div class="emplors-job-types-wrap mb-1"><span
                                                                class="label text-light bg-success">10 Openings</span>
                                                        </div>
                                                        <div class="emplors-job-title-wrap mb-1"><h4><a
                                                                href="employer-detail.html" class="emplors-job-title">Dreezoo
                                                            - India</a></h4></div>
                                                        <div class="emplors-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Software & Consultancy</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>New York, UK</span>.<span>Est: 2010</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="emplors-list-head-last">
                                                    <a href="employer-detail.html"
                                                       class="btn btn-md btn-light-primary px-3">View Company</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-12">
                                        <div class="emplors-list-box border">
                                            <div class="emplors-list-head">
                                                <div class="emplors-list-head-thunner">
                                                    <div class="emplors-list-emp-thumb"><a href="employer-detail.html">
                                                        <figure><img src="../../webapp/WEB-INF/assets/img/l-5.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="emplors-list-job-caption">
                                                        <div class="emplors-job-types-wrap mb-1"><span
                                                                class="label text-light bg-success">04 Openings</span>
                                                        </div>
                                                        <div class="emplors-job-title-wrap mb-1"><h4><a
                                                                href="employer-detail.html" class="emplors-job-title">Adobe
                                                            photoshop</a></h4></div>
                                                        <div class="emplors-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Photo Eddting & Tools</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>London, UK</span>.<span>Est: 1992</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="emplors-list-head-last">
                                                    <a href="employer-detail.html"
                                                       class="btn btn-md btn-light-primary px-3">View Company</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-12">
                                        <div class="emplors-list-box border">
                                            <div class="emplors-list-head">
                                                <div class="emplors-list-head-thunner">
                                                    <div class="emplors-list-emp-thumb"><a href="employer-detail.html">
                                                        <figure><img src="../../webapp/WEB-INF/assets/img/l-6.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="emplors-list-job-caption">
                                                        <div class="emplors-job-types-wrap mb-1"><span
                                                                class="label text-light bg-success">05 Openings</span>
                                                        </div>
                                                        <div class="emplors-job-title-wrap mb-1"><h4><a
                                                                href="employer-detail.html" class="emplors-job-title">Firefox
                                                            - Canada</a></h4></div>
                                                        <div class="emplors-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Web Browser & Tech</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>Denver, UK</span>.<span>Est: 2000</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="emplors-list-head-last">
                                                    <a href="employer-detail.html"
                                                       class="btn btn-md btn-light-primary px-3">View Company</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-12">
                                        <div class="emplors-list-box border">
                                            <div class="emplors-list-head">
                                                <div class="emplors-list-head-thunner">
                                                    <div class="emplors-list-emp-thumb"><a href="employer-detail.html">
                                                        <figure><img src="../../webapp/WEB-INF/assets/img/l-7.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="emplors-list-job-caption">
                                                        <div class="emplors-job-types-wrap mb-1"><span
                                                                class="label text-light bg-success">02 Openings</span>
                                                        </div>
                                                        <div class="emplors-job-title-wrap mb-1"><h4><a
                                                                href="employer-detail.html" class="emplors-job-title">Airbnb
                                                            - Gujrat</a></h4></div>
                                                        <div class="emplors-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Business & Directory</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>New York, UK</span>.<span>Est: 2007</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="emplors-list-head-last">
                                                    <a href="employer-detail.html"
                                                       class="btn btn-md btn-light-primary px-3">View Company</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-12">
                                        <div class="emplors-list-box border">
                                            <div class="emplors-list-head">
                                                <div class="emplors-list-head-thunner">
                                                    <div class="emplors-list-emp-thumb"><a href="employer-detail.html">
                                                        <figure><img src="../../webapp/WEB-INF/assets/img/l-8.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="emplors-list-job-caption">
                                                        <div class="emplors-job-types-wrap mb-1"><span
                                                                class="label text-light bg-success">04 Openings</span>
                                                        </div>
                                                        <div class="emplors-job-title-wrap mb-1"><h4><a
                                                                href="employer-detail.html" class="emplors-job-title">Snapchat
                                                            - Delhi</a></h4></div>
                                                        <div class="emplors-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Video Maker & Reels</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>Liverpool, UK</span>.<span>Est: 2005</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="emplors-list-head-last">
                                                    <a href="employer-detail.html"
                                                       class="btn btn-md btn-light-primary px-3">View Company</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-12">
                                        <div class="emplors-list-box border">
                                            <div class="emplors-list-head">
                                                <div class="emplors-list-head-thunner">
                                                    <div class="emplors-list-emp-thumb"><a href="employer-detail.html">
                                                        <figure><img src="../../webapp/WEB-INF/assets/img/l-9.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="emplors-list-job-caption">
                                                        <div class="emplors-job-types-wrap mb-1"><span
                                                                class="label text-light bg-success">05 Openings</span>
                                                        </div>
                                                        <div class="emplors-job-title-wrap mb-1"><h4><a
                                                                href="employer-detail.html" class="emplors-job-title">Dribbble
                                                            - New York</a></h4></div>
                                                        <div class="emplors-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Portfolio & Showcase</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>Canada, USA</span>.<span>Est: 2002</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="emplors-list-head-last">
                                                    <a href="employer-detail.html"
                                                       class="btn btn-md btn-light-primary px-3">View Company</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-12">
                                        <div class="emplors-list-box border">
                                            <div class="emplors-list-head">
                                                <div class="emplors-list-head-thunner">
                                                    <div class="emplors-list-emp-thumb"><a href="employer-detail.html">
                                                        <figure><img src="../../webapp/WEB-INF/assets/img/l-10.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="emplors-list-job-caption">
                                                        <div class="emplors-job-types-wrap mb-1"><span
                                                                class="label text-light bg-success">07 Openings</span>
                                                        </div>
                                                        <div class="emplors-job-title-wrap mb-1"><h4><a
                                                                href="employer-detail.html" class="emplors-job-title">Skype
                                                            - California</a></h4></div>
                                                        <div class="emplors-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Chat & Calling App</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>London, UK</span>.<span>Est: 1985</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="emplors-list-head-last">
                                                    <a href="employer-detail.html"
                                                       class="btn btn-md btn-light-primary px-3">View Company</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

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