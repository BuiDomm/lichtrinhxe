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
                        <h1 class="mb-1 fs-3 fw-medium">Applied Jobs</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item text-muted"><a href="#">Candidate</a></li>
                                <li class="breadcrumb-item text-muted"><a href="#">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="#" class="text-primary">Applied Jobs</a></li>
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
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb jbs-verified"><a
                                                            href="job-detail.html">
                                                        <figure><img src="../../webapp/assets/img/l-1.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-types-wrap"><span
                                                                class="label text-success bg-light-success">Full Time</span>
                                                        </div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html"
                                                                                               class="jbs-job-title">Product
                                                            Designer</a></h4></div>
                                                        <div class="jbs-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Tripadvisor</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>California</span>.<span>07 Apr 2023</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs"><span class="text-sm-muted">Apply 02 Jun 2022</span>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs"><span
                                                            class="text-sm-muted text-light bg-success py-2 px-3 rounded">Approved</span>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="JavaScript:Void(0);"
                                                       class="btn btn-md btn-light-danger px-3 me-2"><i
                                                            class="fa-solid fa-xmark"></i></a>
                                                    <a href="job-detail.html" class="btn btn-md btn-light-primary px-3"><i
                                                            class="fa-solid fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb"><a href="job-detail.html">
                                                        <figure><img src="../../webapp/WEB-INF/assets/img/l-2.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-types-wrap"><span
                                                                class="label text-success bg-light-success">Full Time</span>
                                                        </div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html"
                                                                                               class="jbs-job-title">Product
                                                            Designer</a></h4></div>
                                                        <div class="jbs-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Pinterest</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>Allahabad</span>.<span>2 Apr 2023</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs"><span class="text-sm-muted">Apply 02 Mar 2022</span>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs"><span
                                                            class="text-sm-muted text-light bg-warning py-2 px-3 rounded">Pending</span>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="JavaScript:Void(0);"
                                                       class="btn btn-md btn-light-danger px-3 me-2"><i
                                                            class="fa-solid fa-xmark"></i></a>
                                                    <a href="job-detail.html" class="btn btn-md btn-light-primary px-3"><i
                                                            class="fa-solid fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb"><a href="job-detail.html">
                                                        <figure><img src="../../webapp/WEB-INF/assets/img/l-3.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-types-wrap"><span
                                                                class="label text-success bg-light-success">Full Time</span>
                                                        </div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html"
                                                                                               class="jbs-job-title">Product
                                                            Designer</a></h4></div>
                                                        <div class="jbs-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Shopify</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>Canada, USA</span>.<span>15 March 2023</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs"><span class="text-sm-muted">Apply 07 Feb 2022</span>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs"><span
                                                            class="text-sm-muted text-light bg-success py-2 px-3 rounded">Approved</span>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="JavaScript:Void(0);"
                                                       class="btn btn-md btn-light-danger px-3 me-2"><i
                                                            class="fa-solid fa-xmark"></i></a>
                                                    <a href="job-detail.html" class="btn btn-md btn-light-primary px-3"><i
                                                            class="fa-solid fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb jbs-verified"><a
                                                            href="job-detail.html">
                                                        <figure><img src="../../webapp/WEB-INF/assets/img/l-4.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-types-wrap"><span
                                                                class="label text-success bg-light-success">Full Time</span>
                                                        </div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html"
                                                                                               class="jbs-job-title">Jr.
                                                            Laravel Developer</a></h4></div>
                                                        <div class="jbs-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Dreezoo</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>Liverpool, UK</span>.<span>20 March 2023</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs"><span class="text-sm-muted">Apply 02 Jun 2022</span>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs"><span
                                                            class="text-sm-muted text-light bg-warning py-2 px-3 rounded">Pending</span>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="JavaScript:Void(0);"
                                                       class="btn btn-md btn-light-danger px-3 me-2"><i
                                                            class="fa-solid fa-xmark"></i></a>
                                                    <a href="job-detail.html" class="btn btn-md btn-light-primary px-3"><i
                                                            class="fa-solid fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb"><a href="job-detail.html">
                                                        <figure><img src="../../webapp/WEB-INF/assets/img/l-5.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-types-wrap"><span
                                                                class="label text-success bg-light-success">Enternship</span>
                                                        </div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html"
                                                                                               class="jbs-job-title">Java
                                                            & Python Developer</a></h4></div>
                                                        <div class="jbs-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Photoshop</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>California</span>.<span>20 Feb 2023</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs"><span class="text-sm-muted">Apply 20 Oct 2022</span>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs"><span
                                                            class="text-sm-muted text-light bg-success py-2 px-3 rounded">Approved</span>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="JavaScript:Void(0);"
                                                       class="btn btn-md btn-light-danger px-3 me-2"><i
                                                            class="fa-solid fa-xmark"></i></a>
                                                    <a href="job-detail.html" class="btn btn-md btn-light-primary px-3"><i
                                                            class="fa-solid fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb"><a href="job-detail.html">
                                                        <figure><img src="../../webapp/WEB-INF/assets/img/l-6.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-types-wrap"><span
                                                                class="label text-success bg-light-success">Full Time</span>
                                                        </div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html"
                                                                                               class="jbs-job-title">Sr.
                                                            Code Ignetor Developer</a></h4></div>
                                                        <div class="jbs-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Firefox</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>Canada, USA</span>.<span>18 Feb 2023</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs"><span class="text-sm-muted">Apply 02 Jun 2022</span>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs"><span
                                                            class="text-sm-muted text-light bg-success py-2 px-3 rounded">Approved</span>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="JavaScript:Void(0);"
                                                       class="btn btn-md btn-light-danger px-3 me-2"><i
                                                            class="fa-solid fa-xmark"></i></a>
                                                    <a href="job-detail.html" class="btn btn-md btn-light-primary px-3"><i
                                                            class="fa-solid fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb"><a href="job-detail.html">
                                                        <figure><img src="../../webapp/WEB-INF/assets/img/l-7.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-types-wrap"><span
                                                                class="label text-success bg-light-success">Part Time</span>
                                                        </div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html"
                                                                                               class="jbs-job-title">Sr.
                                                            Magento Developer</a></h4></div>
                                                        <div class="jbs-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Airbnb</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>London, UK</span>.<span>15 Feb 2023</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs"><span class="text-sm-muted">Apply 02 Jun 2022</span>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs"><span
                                                            class="text-sm-muted text-light bg-warning py-2 px-3 rounded">Pending</span>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="JavaScript:Void(0);"
                                                       class="btn btn-md btn-light-danger px-3 me-2"><i
                                                            class="fa-solid fa-xmark"></i></a>
                                                    <a href="job-detail.html" class="btn btn-md btn-light-primary px-3"><i
                                                            class="fa-solid fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb jbs-verified"><a
                                                            href="job-detail.html">
                                                        <figure><img src="../../webapp/WEB-INF/assets/img/l-8.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-types-wrap"><span
                                                                class="label text-success bg-light-success">Full Time</span>
                                                        </div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html"
                                                                                               class="jbs-job-title">New
                                                            Shopify Developer</a></h4></div>
                                                        <div class="jbs-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Snapchat</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>Denver, USA</span>.<span>15 Feb 2023</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs"><span class="text-sm-muted">Apply 02 Jun 2022</span>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs"><span
                                                            class="text-sm-muted text-light bg-success py-2 px-3 rounded">Approved</span>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="JavaScript:Void(0);"
                                                       class="btn btn-md btn-light-danger px-3 me-2"><i
                                                            class="fa-solid fa-xmark"></i></a>
                                                    <a href="job-detail.html" class="btn btn-md btn-light-primary px-3"><i
                                                            class="fa-solid fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb"><a href="job-detail.html">
                                                        <figure><img src="../../webapp/WEB-INF/assets/img/l-9.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-types-wrap"><span
                                                                class="label text-success bg-light-success">Full Time</span>
                                                        </div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html"
                                                                                               class="jbs-job-title">Front-end
                                                            Developer</a></h4></div>
                                                        <div class="jbs-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Dribbble</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>New York, USA</span>.<span>7 March 2023</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs"><span class="text-sm-muted">Apply 10 Apr 2022</span>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs"><span
                                                            class="text-sm-muted text-light bg-warning py-2 px-3 rounded">Pending</span>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="JavaScript:Void(0);"
                                                       class="btn btn-md btn-light-danger px-3 me-2"><i
                                                            class="fa-solid fa-xmark"></i></a>
                                                    <a href="job-detail.html" class="btn btn-md btn-light-primary px-3"><i
                                                            class="fa-solid fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb jbs-verified"><a
                                                            href="job-detail.html">
                                                        <figure><img src="../../webapp/WEB-INF/assets/img/l-10.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-types-wrap"><span
                                                                class="label text-success bg-light-success">Full Time</span>
                                                        </div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html"
                                                                                               class="jbs-job-title">Technical
                                                            Content Writer</a></h4></div>
                                                        <div class="jbs-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Skype</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>Canada, USA</span>.<span>10 March 2022</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs"><span class="text-sm-muted">Apply 15 Nov 2022</span>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs"><span
                                                            class="text-sm-muted text-light bg-warning py-2 px-3 rounded">Pending</span>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="JavaScript:Void(0);"
                                                       class="btn btn-md btn-light-danger px-3 me-2"><i
                                                            class="fa-solid fa-xmark"></i></a>
                                                    <a href="job-detail.html" class="btn btn-md btn-light-primary px-3"><i
                                                            class="fa-solid fa-eye"></i></a>
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