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
                        <h1 class="mb-1 fs-3 fw-medium">Candidate Profile</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item text-muted"><a href="#">Candidate</a></li>
                                <li class="breadcrumb-item text-muted"><a href="#">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="#" class="text-primary">Candidate Profile</a></li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>

            <div class="dashboard-widg-bar d-block">
                <div class="dashboard-profle-wrapper mb-4">
                    <div class="dash-prf-start">
                        <div class="dash-prf-start-upper">
                            <div class="dash-prf-start-thumb">
                                <figure><img src="../../assets/img/team-1.jpg" class="img-fluid circle" alt="">
                                </figure>
                            </div>
                        </div>
                        <div class="dash-prf-start-bottom">
                            <div class="upload-btn-wrapper small">
                                <button class="btn">Change Profile</button>
                                <input type="file" name="myfile">
                            </div>
                        </div>
                    </div>
                    <div class="dash-prf-end">
                        <div class="dash-prfs-caption">
                            <div class="dash-prfs-title">
                                <h4>R. Daniel Markduke</h4>
                            </div>
                            <div class="dash-prfs-subtitle">
                                <div class="jbs-job-mrch-lists">
                                    <div class="single-mrch-lists">
                                        <span>Sr. Web Designer</span>.<span><i
                                            class="fa-solid fa-location-dot me-1"></i>London</span>
                                    </div>
                                </div>
                            </div>
                            <div class="jbs-grid-job-edrs-group mt-1">
                                <span>HTML</span>
                                <span>CSS3</span>
                                <span>Bootstrap</span>
                                <span>Redux</span>
                            </div>
                        </div>
                        <div class="dash-prf-caption-end">
                            <div class="dash-prf-infos">
                                <div class="single-dash-prf-infos">
                                    <div class="single-dash-prf-infos-icons"><i
                                            class="fa-solid fa-envelope-open-text"></i></div>
                                    <div class="single-dash-prf-infos-caption">
                                        <p class="text-sm-muted mb-0">Email</p>
                                        <h5>Themezhub@gmail.com</h5>
                                    </div>
                                </div>
                                <div class="single-dash-prf-infos">
                                    <div class="single-dash-prf-infos-icons"><i class="fa-solid fa-phone-volume"></i>
                                    </div>
                                    <div class="single-dash-prf-infos-caption">
                                        <p class="text-sm-muted mb-0">Call</p>
                                        <h5>+91 256 356 8547</h5>
                                    </div>
                                </div>
                                <div class="single-dash-prf-infos">
                                    <div class="single-dash-prf-infos-icons"><i class="fa-solid fa-briefcase"></i></div>
                                    <div class="single-dash-prf-infos-caption">
                                        <p class="text-sm-muted mb-0">Exp.</p>
                                        <h5>5+ Years</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="dash-prf-completion">
                                <p class="text-sm-muted">Profile Completed</p>
                                <div class="progress" role="progressbar" aria-label="Example Success with label"
                                     aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
                                    <div class="progress-bar bg-success" style="width: 75%">75%</div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <!-- Card Row -->
                <div class="card">
                    <div class="card-header">
                        <h4>Basic Detail</h4>
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="row">

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Your Name</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Job Title</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Age</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Education</label>
                                        <div class="select-ops">
                                            <select>
                                                <option value="1">High School</option>
                                                <option value="2">Intermidiate</option>
                                                <option value="3">Bachelore Degree</option>
                                                <option value="4">Master Degree</option>
                                                <option value="5">Post Graduate</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Experience</label>
                                        <div class="select-ops">
                                            <select>
                                                <option value="1">Fresher</option>
                                                <option value="2">1+ Year</option>
                                                <option value="3">2+ Year</option>
                                                <option value="4">4+ Year</option>
                                                <option value="5">5+ Year</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Language</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-12 col-lg-12 col-md-12">
                                    <div class="form-group">
                                        <label>About Info</label>
                                        <textarea class="form-control ht-80"></textarea>
                                    </div>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
                <!-- Card Row End -->

                <!-- Card Row -->
                <div class="card">
                    <div class="card-header">
                        <h4>Contact Detail</h4>
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="row">

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Your Email</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Phone no.</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Temporary Address</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Address</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Address 2</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Country</label>
                                        <div class="select-ops">
                                            <select>
                                                <option value="1">India</option>
                                                <option value="2">United State</option>
                                                <option value="3">United kingdom</option>
                                                <option value="4">Austrailia</option>
                                                <option value="5">Russia</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>State/City</label>
                                        <div class="select-ops">
                                            <select>
                                                <option value="1">California</option>
                                                <option value="2">Denver</option>
                                                <option value="3">New York</option>
                                                <option value="4">Canada</option>
                                                <option value="5">Poland</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Zip Code</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Latitude</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>longitude</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
                <!-- Card Row End -->

                <!-- Card Row -->
                <div class="card">
                    <div class="card-header">
                        <h4>Social Login</h4>
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="row">

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Facebook</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Twitter</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Instagram</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Linked In</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Twitter</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Google Plus</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
                <!-- Card Row End -->

                <!-- Submit Busston -->
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <button type="submit" class="btn ft--medium btn-primary">Save Profile</button>
                    </div>
                </div>

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