<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="header header-light head-fixed">
    <div class="container">
        <nav id="navigation" class="navigation navigation-landscape">
            <div class="nav-header">
                <a class="nav-brand" href="#">
                    <img src="../../assets/img/logo-light1.png" class="logo" alt="">
                </a>
                <div class="nav-toggle"></div>
                <ul class="mobile_nav dhsbrd">
                    <li>
                        <div class="btn-group account-drop">
                            <button type="button" class="btn btn-order-by-filt" data-bs-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">
                                <i class="fa-regular fa-comments"></i><span class="noti-status"></span>
                            </button>
                            <div class="dropdown-menu pull-right animated flipInX">
                                <div class="drp_menu_headr bg-primary">
                                    <h4>Notifications</h4>
                                </div>
                                <div class="ntf-list-groups">
                                    <div class="ntf-list-groups-single">
                                        <div class="ntf-list-groups-icon text-purple"><i
                                                class="fa-solid fa-house-medical-circle-check"></i></div>
                                        <div class="ntf-list-groups-caption"><p class="small"><strong>Kr. Shaury
                                                    Preet</strong> Replied Your Message</p></div>
                                    </div>
                                    <div class="ntf-list-groups-single">
                                        <div class="ntf-list-groups-icon text-warning"><i
                                                class="fa-solid fa-envelope"></i></div>
                                        <div class="ntf-list-groups-caption"><p class="small">Mortin Denver Accepted
                                                Your Resume <strong class="text-success">On Job Stock</strong></p></div>
                                    </div>
                                    <div class="ntf-list-groups-single">
                                        <div class="ntf-list-groups-icon text-success"><i
                                                class="fa-solid fa-sack-dollar"></i></div>
                                        <div class="ntf-list-groups-caption"><p class="small">Your Job #456256
                                                Expired Yesterday <strong>View job</strong></p></div>
                                    </div>
                                    <div class="ntf-list-groups-single">
                                        <div class="ntf-list-groups-icon text-danger"><i
                                                class="fa-solid fa-comments"></i></div>
                                        <div class="ntf-list-groups-caption"><p class="small"><strong>Daniel
                                                    kurwa</strong> Has Been Approved Your Resume!.</p></div>
                                    </div>
                                    <div class="ntf-list-groups-single">
                                        <div class="ntf-list-groups-icon text-info"><i
                                                class="fa-solid fa-circle-dollar-to-slot"></i></div>
                                        <div class="ntf-list-groups-caption"><p class="small">Khushi Verma Left A
                                                Review On <strong class="text-danger">Your Message</strong></p></div>
                                    </div>
                                    <div class="ntf-list-groups-single">
                                        <a href="#" class="ntf-more">View All Notifications</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="btn-group account-drop">
                            <button type="button" class="btn btn-order-by-filt" data-bs-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">
                                <img src="../../assets/img/user-5.png" class="img-fluid circle" alt="">
                            </button>
                            <div class="dropdown-menu pull-right animated flipInX">
                                <div class="drp_menu_headr bg-primary">
                                    <h4>Hi, ${user.email}</h4>
                                    <div class="drp_menu_headr-right">
                                        <button type="button" class="btn btn-whites">Logout</button>
                                    </div>
                                </div>
                                <ul>
                                    <li><a href="candidate-dashboard.html"><i class="fa fa-tachometer-alt"></i>Dashboard<span
                                                class="notti_coun style-1">4</span></a></li>
                                    <li><a href="candidate-profile.html"><i class="fa fa-user-tie"></i>My
                                            Profile</a></li>
                                    <li><a href="candidate-resume.html"><i class="fa fa-file"></i>My Resume<span
                                                class="notti_coun style-2">7</span></a></li>
                                    <li><a href="candidate-saved-jobs.html"><i class="fa-solid fa-bookmark"></i>Saved
                                            Resume</a></li>
                                    <li><a href="candidate-messages.html"><i
                                                class="fa fa-envelope"></i>Messages<span
                                                class="notti_coun style-3">3</span></a></li>
                                    <li><a href="candidate-change-password.html"><i class="fa fa-unlock-alt"></i>Change
                                            Password</a></li>
                                    <li><a href="candidate-delete-account.html"><i
                                                class="fa-solid fa-trash-can"></i>Delete Account</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="nav-menus-wrapper">
                <ul class="nav-menu">
                    <li><a href="/">Home<span class="submenu-indicator"></span></a>

                    </li>
                    <c:choose>
                        <c:when test="${not empty user}">
                            <c:if test="${userType eq 'jobSeeker'}">
                                <li><a href="JavaScript:Void(0);">For Candidate<span class="submenu-indicator"></span></a>
                                    <ul class="nav-dropdown nav-submenu">
                                        <li><a href="/job/job-list">Browse Jobs<span class="submenu-indicator"></span></a>

                                        </li>
                                        <li><a href="JavaScript:Void(0);">Browse Map Jobs<span class="submenu-indicator"></span></a>
                                            <ul class="nav-dropdown nav-submenu">
                                                <li><a href="half-map.html">Job Search on Map 01</a></li>
                                                <li><a href="half-map-2.html">Job Search on Map 02</a></li>
                                                <li><a href="half-map-3.html">Job Search on Map 03</a></li>
                                                <li><a href="half-map-list-1.html">Job Search on Map 04</a></li>
                                                <li><a href="half-map-list-2.html">Job Search on Map 05</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="JavaScript:Void(0);">Browse Candidate<span
                                                    class="submenu-indicator"></span></a>
                                            <ul class="nav-dropdown nav-submenu">
                                                <li><a href="candidate-grid-1.html">Candidate Grid 01</a></li>
                                                <li><a href="candidate-grid-2.html">Candidate Grid 02</a></li>
                                                <li><a href="candidate-list-1.html">Candidate List 01</a></li>
                                                <li><a href="candidate-list-2.html">Candidate List 02</a></li>
                                                <li><a href="candidate-half-map.html">Candidate Half Map 01</a></li>
                                                <li><a href="candidate-half-map-list.html">Candidate Half Map 02</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="JavaScript:Void(0);">Single job Detail<span
                                                    class="submenu-indicator"></span></a>
                                            <ul class="nav-dropdown nav-submenu">
                                                <li><a href="single-layout-1.html">Single Layout 01</a></li>
                                                <li><a href="single-layout-2.html">Single Layout 02</a></li>
                                                <li><a href="single-layout-3.html">Single Layout 03</a></li>
                                                <li><a href="single-layout-4.html">Single Layout 04</a></li>
                                                <li><a href="single-layout-5.html">Single Layout 05<span
                                                            class="new-update">New</span></a></li>
                                                <li><a href="single-layout-6.html">Single Layout 06<span
                                                            class="new-update">New</span></a></li>
                                            </ul>
                                        </li>
                                        <li><a href="JavaScript:Void(0);">Candidate Detail<span
                                                    class="submenu-indicator"></span></a>
                                            <ul class="nav-dropdown nav-submenu">
                                                <li><a href="candidate-detail.html">Candidate Detail 01</a></li>
                                                <li><a href="candidate-detail-2.html">Candidate Detail 02</a></li>
                                                <li><a href="candidate-detail-3.html">Candidate Detail 03</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="advance-search.html">Advance Search</a></li>
                                        <li>
                                            <a href="/jobseeker">Candidate Dashboard<span
                                                    class="new-update">New</span></a>
                                        </li>
                                    </ul>
                                </li>
                            </c:if>
                            <c:if test="${userType eq 'employer'}">
                                <li><a href="JavaScript:Void(0);">For Employer<span class="submenu-indicator"></span></a>
                                    <ul class="nav-dropdown nav-submenu">
                                        <li><a href="JavaScript:Void(0);">Explore Employers<span
                                                    class="submenu-indicator"></span></a>
                                            <ul class="nav-dropdown nav-submenu">
                                                <li><a href="/employer/employersearch1">Search Employers 01</a></li>
                                                <li><a href="/employer/employersearch2">Search Employers 02</a></li>
                                                <li><a href="/employer/employerlist">Search List Employers 01</a></li>
                                                <li><a href="/employer/employersearchmap">Search Employers Map</a></li>
                                                <li><a href="/employer/employersearchlistmap">Search List Employers Map</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="/employer/detail">Employer Detail</a>
                                        </li>
                                        <li>
                                            <a href="/employer/dashboard">Employer Dashboard<span
                                                    class="new-update">New</span></a>
                                        </li>
                                    </ul>
                                </li>
                            </c:if>


                        </c:when>
                        <c:otherwise>
                            <li><a href="JavaScript:Void(0);">For Candidate<span class="submenu-indicator"></span></a>
                                <ul class="nav-dropdown nav-submenu">
                                    <li><a href="/job/job-list">Browse Jobs<span class="submenu-indicator"></span></a>

                                    </li>
                                    <li><a href="JavaScript:Void(0);">Browse Map Jobs<span class="submenu-indicator"></span></a>
                                        <ul class="nav-dropdown nav-submenu">
                                            <li><a href="half-map.html">Job Search on Map 01</a></li>
                                            <li><a href="half-map-2.html">Job Search on Map 02</a></li>
                                            <li><a href="half-map-3.html">Job Search on Map 03</a></li>
                                            <li><a href="half-map-list-1.html">Job Search on Map 04</a></li>
                                            <li><a href="half-map-list-2.html">Job Search on Map 05</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="JavaScript:Void(0);">Browse Candidate<span
                                                class="submenu-indicator"></span></a>
                                        <ul class="nav-dropdown nav-submenu">
                                            <li><a href="candidate-grid-1.html">Candidate Grid 01</a></li>
                                            <li><a href="candidate-grid-2.html">Candidate Grid 02</a></li>
                                            <li><a href="candidate-list-1.html">Candidate List 01</a></li>
                                            <li><a href="candidate-list-2.html">Candidate List 02</a></li>
                                            <li><a href="candidate-half-map.html">Candidate Half Map 01</a></li>
                                            <li><a href="candidate-half-map-list.html">Candidate Half Map 02</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="JavaScript:Void(0);">Single job Detail<span
                                                class="submenu-indicator"></span></a>
                                        <ul class="nav-dropdown nav-submenu">
                                            <li><a href="single-layout-1.html">Single Layout 01</a></li>
                                            <li><a href="single-layout-2.html">Single Layout 02</a></li>
                                            <li><a href="single-layout-3.html">Single Layout 03</a></li>
                                            <li><a href="single-layout-4.html">Single Layout 04</a></li>
                                            <li><a href="single-layout-5.html">Single Layout 05<span
                                                        class="new-update">New</span></a></li>
                                            <li><a href="single-layout-6.html">Single Layout 06<span
                                                        class="new-update">New</span></a></li>
                                        </ul>
                                    </li>
                                    <li><a href="JavaScript:Void(0);">Candidate Detail<span
                                                class="submenu-indicator"></span></a>
                                        <ul class="nav-dropdown nav-submenu">
                                            <li><a href="candidate-detail.html">Candidate Detail 01</a></li>
                                            <li><a href="candidate-detail-2.html">Candidate Detail 02</a></li>
                                            <li><a href="candidate-detail-3.html">Candidate Detail 03</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="advance-search.html">Advance Search</a></li>
                                    <li>
                                        <a href="/jobseeker">Candidate Dashboard<span
                                                class="new-update">New</span></a>
                                    </li>
                                </ul>
                            </li>

                            <li><a href="JavaScript:Void(0);">For Employer<span class="submenu-indicator"></span></a>
                                <ul class="nav-dropdown nav-submenu">
                                    <li><a href="JavaScript:Void(0);">Explore Employers<span
                                                class="submenu-indicator"></span></a>
                                        <ul class="nav-dropdown nav-submenu">
                                            <li><a href="/employer/employersearch1">Search Employers 01</a></li>
                                            <li><a href="/employer/employersearch2">Search Employers 02</a></li>
                                            <li><a href="/employer/employerlist">Search List Employers 01</a></li>
                                            <li><a href="/employer/employersearchmap">Search Employers Map</a></li>
                                            <li><a href="/employer/employersearchlistmap">Search List Employers Map</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="/employer/detail">Employer Detail</a>
                                    </li>
                                    <li>
                                        <a href="/employer/dashboard">Employer Dashboard<span
                                                class="new-update">New</span></a>
                                    </li>
                                </ul>
                            </li>
                        </c:otherwise>
                    </c:choose>

                    <li><a href="JavaScript:Void(0);">Pages<span class="submenu-indicator"></span></a>
                        <ul class="nav-dropdown nav-submenu">
                            <li><a href="about-us.html">About Us</a></li>
                            <li><a href="checkout.html">Checkout</a></li>
                            <li><a href="blog.html">Blogs Page</a></li>
                            <li><a href="blog-detail.html">Blog Detail</a></li>
                            <li><a href="privacy.html">Terms & Privacy</a></li>
                            <li><a href="pricing.html">Pricing</a></li>
                            <li><a href="faq.html">FAQ's</a></li>
                            <li><a href="contact.html">Contacts</a></li>
                        </ul>
                    </li>

                    <li><a href="#">Help</a></li>

                </ul>

                <ul class="nav-menu nav-menu-social align-to-right">
                    <li>
                        <c:choose>
                            <c:when test="${not empty user}">

                            </c:when>
                            <c:otherwise>
                                <a href="JavaScript:Void(0);" data-bs-toggle="modal" data-bs-target="#login">
                                    <i class="fas fa-sign-in-alt me-2"></i>Sign In
                                </a>
                            </c:otherwise>
                        </c:choose>
                    </li>
                    <li class="list-buttons ms-2">
                        <a href="${pageContext.request.contextPath}/signup"><i
                                class="fa-solid fa-cloud-arrow-up me-2"></i>Upload Resume</a>
                    </li>
                    <c:if test="${not empty user}">
                        <li>
                            <div class="btn-group account-drop">
                                <button type="button" class="btn btn-order-by-filt" data-bs-toggle="dropdown"
                                        aria-haspopup="true" aria-expanded="false">
                                    <i class="fa-regular fa-comments"></i><span class="noti-status"></span>
                                </button>
                                <div class="dropdown-menu pull-right animated flipInX">

                                    <div class="drp_menu_headr bg-primary">
                                        <h4>Notifications</h4>
                                    </div>
                                    <div class="ntf-list-groups">
                                        <div class="ntf-list-groups-single">
                                            <div class="ntf-list-groups-icon text-purple"><i
                                                    class="fa-solid fa-house-medical-circle-check"></i></div>
                                            <div class="ntf-list-groups-caption"><p class="small"><strong>Kr. Shaury
                                                        Preet</strong> Replied Your Message</p></div>
                                        </div>
                                        <div class="ntf-list-groups-single">
                                            <div class="ntf-list-groups-icon text-warning"><i
                                                    class="fa-solid fa-envelope"></i></div>
                                            <div class="ntf-list-groups-caption"><p class="small">Mortin Denver Accepted
                                                    Your Resume <strong class="text-success">On Job Stock</strong></p></div>
                                        </div>
                                        <div class="ntf-list-groups-single">
                                            <div class="ntf-list-groups-icon text-success"><i
                                                    class="fa-solid fa-sack-dollar"></i></div>
                                            <div class="ntf-list-groups-caption"><p class="small">Your Job #456256
                                                    Expired Yesterday <strong>View job</strong></p></div>
                                        </div>
                                        <div class="ntf-list-groups-single">
                                            <div class="ntf-list-groups-icon text-danger"><i
                                                    class="fa-solid fa-comments"></i></div>
                                            <div class="ntf-list-groups-caption"><p class="small"><strong>Daniel
                                                        kurwa</strong> Has Been Approved Your Resume!.</p></div>
                                        </div>
                                        <div class="ntf-list-groups-single">
                                            <div class="ntf-list-groups-icon text-info"><i
                                                    class="fa-solid fa-circle-dollar-to-slot"></i></div>
                                            <div class="ntf-list-groups-caption"><p class="small">Khushi Verma Left A
                                                    Review On <strong class="text-danger">Your Message</strong></p></div>
                                        </div>
                                        <div class="ntf-list-groups-single">
                                            <a href="#" class="ntf-more">View All Notifications</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="btn-group account-drop">
                                <button type="button" class="btn btn-order-by-filt" data-bs-toggle="dropdown"
                                        aria-haspopup="true" aria-expanded="false">
                                    <img src="../../assets/img/user-5.png" class="img-fluid circle" alt="">
                                </button>
                                <div class="dropdown-menu pull-right animated flipInX">
                                    <div class="drp_menu_headr bg-primary">
                                        <h4>Hi, ${user.email}</h4>
                                        <div class="drp_menu_headr-right">
                                            <a href="${pageContext.request.contextPath}/logout" class="btn btn-whites">Logout</a>
                                        </div>
                                    </div>
                                    <ul>
                                        <li><a href="candidate-dashboard.html"><i class="fa fa-tachometer-alt"></i>Dashboard<span
                                                    class="notti_coun style-1">4</span></a></li>
                                        <li><a href="candidate-profile.html"><i class="fa fa-user-tie"></i>My
                                                Profile</a></li>
                                        <li><a href="candidate-resume.html"><i class="fa fa-file"></i>My Resume<span
                                                    class="notti_coun style-2">7</span></a></li>
                                        <li><a href="candidate-saved-jobs.html"><i class="fa-solid fa-bookmark"></i>Saved
                                                Resume</a></li>
                                        <li><a href="candidate-messages.html"><i
                                                    class="fa fa-envelope"></i>Messages<span
                                                    class="notti_coun style-3">3</span></a></li>
                                        <li><a href="candidate-change-password.html"><i class="fa fa-unlock-alt"></i>Change
                                                Password</a></li>
                                        <li><a href="candidate-delete-account.html"><i
                                                    class="fa-solid fa-trash-can"></i>Delete Account</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="list-buttons ms-2">
                            <a href="employer-submit-job.html"><i class="fa-solid fa-cloud-arrow-up me-2"></i>Post
                                Job</a>
                        </li>
                    </c:if>
                </ul>
            </div>
        </nav>
    </div>
</div>
