<!doctype html>
<html lang="en">

<!-- Mirrored from shreethemes.net/jobstock-landing-2.2/jobstock/employer-profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Sep 2024 02:53:13 GMT -->
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
                        <h1 class="mb-1 fs-3 fw-medium">Update Profile</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item text-muted"><a href="#">Employer</a></li>
                                <li class="breadcrumb-item text-muted"><a href="#">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="#" class="text-primary">My Profile</a></li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>

            <div class="dashboard-widg-bar d-block">

                <div class="dashboard-profle-wrapper mb-4">
                    <div class="dash-prf-start">
                        <div class="dash-prf-start-upper mb-2">
                            <div class="dash-prf-start-thumb jbs-verified">
                                <figure class="mb-0"><img src="../../webapp/assets/img/l-5.png" class="img-fluid rounded" alt=""></figure>
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
                        <div class="dash-prfs-caption emplyer">
                            <div class="dash-prfs-flexfirst">
                                <div class="dash-prfs-title">
                                    <h4>Adobe Photoshop</h4>
                                </div>
                                <div class="dash-prfs-subtitle">
                                    <div class="jbs-job-mrch-lists">
                                        <div class="single-mrch-lists">
                                            <span>Software & Application</span>.<span><i class="fa-solid fa-location-dot me-1"></i>Canada, USA</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="jbs-kioyer mt-1">
                                    <div class="jbs-kioyer-groups justify-content-start">
                                        <span class="fa-solid fa-star active"></span>
                                        <span class="fa-solid fa-star active"></span>
                                        <span class="fa-solid fa-star active"></span>
                                        <span class="fa-solid fa-star active"></span>
                                        <span class="fa-solid fa-star"></span>
                                        <span class="aal-reveis">4.8</span>
                                    </div>
                                </div>
                            </div>
                            <div class="dash-prfs-flexends">
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked>
                                    <label class="form-check-label" for="flexSwitchCheckChecked">Show Profile</label>
                                </div>
                            </div>
                        </div>
                        <div class="dash-prf-caption-end">
                            <div class="dash-prf-infos">
                                <div class="single-dash-prf-infos">
                                    <div class="single-dash-prf-infos-icons"><i class="fa-solid fa-envelope-open-text"></i></div>
                                    <div class="single-dash-prf-infos-caption">
                                        <p class="text-sm-muted mb-0">Email</p>
                                        <h5>Themezhub@gmail.com</h5>
                                    </div>
                                </div>
                                <div class="single-dash-prf-infos">
                                    <div class="single-dash-prf-infos-icons"><i class="fa-solid fa-phone-volume"></i></div>
                                    <div class="single-dash-prf-infos-caption">
                                        <p class="text-sm-muted mb-0">Call</p>
                                        <h5>+91 256 356 8547</h5>
                                    </div>
                                </div>
                                <div class="single-dash-prf-infos">
                                    <div class="single-dash-prf-infos-icons"><i class="fa-solid fa-briefcase"></i></div>
                                    <div class="single-dash-prf-infos-caption">
                                        <p class="text-sm-muted mb-0">Emp.</p>
                                        <h5>2000 - 5000</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="dash-prf-completion">
                                <p class="text-sm-muted">Profile Completed</p>
                                <div class="progress" role="progressbar" aria-label="Example Success with label" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
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
                                        <label>Employer Name</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Email ID</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Phone No.</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Website</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Founded Year</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Company Category</label>
                                        <div class="select-ops">
                                            <select>
                                                <option value="1">Web & Application</option>
                                                <option value="2">Banking Services</option>
                                                <option value="3">UI/UX Design</option>
                                                <option value="4">IOS/App Application</option>
                                                <option value="5">Education</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Company Size</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Video</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-12 col-lg-12 col-md-12">
                                    <div class="form-group">
                                        <label>About Company</label>
                                        <textarea class="form-control ht-80"></textarea>
                                    </div>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
                <!-- Card Row End -->

                <!-- Row Start -->
                <div class="card">
                    <div class="card-header">
                        <h4>Award</h4>
                    </div>
                    <div class="card-body">
                        <!-- Single Award Wrap -->
                        <div class="single-edc-wrap">
                            <div class="single-edc-box">
                                <div class="single-edc-remove-box"><div class="cd-resume-cancel"><a href="JavaScript:Void(0);" class="cancel-link"><i class="fa-solid fa-xmark"></i></a></div></div>
                                <div class="single-edc-title-box">
                                    <a class="btn btn-collapse" data-bs-toggle="collapse" href="#BCPIL" role="button" aria-expanded="false" aria-controls="BCPIL">BCPIL Award</a>
                                </div>
                            </div>
                            <div class="single-edc-caption">
                                <div class="collapse" id="BCPIL">
                                    <div class="card card-body">
                                        <form>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Award Title</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="BCPIL Award">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Award Year</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="01-12-2012">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Description</label>
                                                <div class="col-md-10">
                                                    <textarea class="form-control ht-80">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</textarea>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Single Award Wrap -->
                        <div class="single-edc-wrap">
                            <div class="single-edc-box">
                                <div class="single-edc-remove-box"><div class="cd-resume-cancel"><a href="JavaScript:Void(0);" class="cancel-link"><i class="fa-solid fa-xmark"></i></a></div></div>
                                <div class="single-edc-title-box">
                                    <a class="btn btn-collapse" data-bs-toggle="collapse" href="#RIZZA" role="button" aria-expanded="false" aria-controls="RIZZA">RIZZA Award</a>
                                </div>
                            </div>
                            <div class="single-edc-caption">
                                <div class="collapse" id="RIZZA">
                                    <div class="card card-body">
                                        <form>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Award Title</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="RIZZA Award">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Award Year</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="01-12-2016">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Description</label>
                                                <div class="col-md-10">
                                                    <textarea class="form-control ht-80">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</textarea>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Single Award Wrap -->
                        <div class="single-edc-wrap">
                            <div class="single-edc-box">
                                <div class="single-edc-remove-box"><div class="cd-resume-cancel"><a href="JavaScript:Void(0);" class="cancel-link"><i class="fa-solid fa-xmark"></i></a></div></div>
                                <div class="single-edc-title-box">
                                    <a class="btn btn-collapse" data-bs-toggle="collapse" href="#FIFFA" role="button" aria-expanded="false" aria-controls="FIFFA">FIFFA Award</a>
                                </div>
                            </div>
                            <div class="single-edc-caption">
                                <div class="collapse" id="FIFFA">
                                    <div class="card card-body">
                                        <form>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Award Title</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="FIFFA ICL">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Award Year</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="01-12-2022">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Description</label>
                                                <div class="col-md-10">
                                                    <textarea class="form-control ht-80">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</textarea>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="single-edc-wrap">
                            <a href="JavaScript:Void(0);" data-bs-toggle="modal" data-bs-target="#award" class="add-light-btn">Add More Award</a>
                        </div>
                    </div>
                </div>
                <!-- End Row -->

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

    <!-- Award Modal -->
    <div class="modal fade" id="award" tabindex="-1" role="dialog" aria-labelledby="messagemodal" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered award-pop-form" role="document">
            <div class="modal-content" id="awardmodal">
                <span class="mod-close" data-bs-dismiss="modal" aria-hidden="true"><i class="fas fa-close"></i></span>
                <div class="modal-body">
                    <div class="text-center">
                        <h4 class="mb-3">Add your Award</h4>
                    </div>
                    <div class="added-form">
                        <form>
                            <div class="row mb-3">
                                <label class="col-md-12 col-form-label">Award Title</label>
                                <div class="col-md-12">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-md-12 col-form-label">Award Year</label>
                                <div class="col-md-12">
                                    <input type="date" class="form-control">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-md-12 col-form-label">Description</label>
                                <div class="col-md-12">
                                    <textarea class="form-control ht-80"></textarea>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-12">
                                    <button type="submit" class="btn full-width btn-primary">Save Award</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Modal -->

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

<!-- Mirrored from shreethemes.net/jobstock-landing-2.2/jobstock/employer-profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Sep 2024 02:53:13 GMT -->
</html>