<div aria-hidden="true" aria-labelledby="loginmodal" class="modal fade" id="login" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered login-pop-form" role="document">
        <div class="modal-content" id="loginmodal">
            <span aria-hidden="true" class="mod-close" data-bs-dismiss="modal"><i class="fas fa-close"></i></span>
            <div class="modal-header">
                <div class="mdl-thumb"><img alt="" class="img-fluid" src="../assets/img/logo-light1.png"
                                            width="200px"></div>
                <div class="mdl-title"><h4 class="modal-header-title">Hello, 7Job here</h4></div>
            </div>
            <div class="modal-body">
                <div class="modal-login-form">
                    <form>
                        <div class="form-floating mb-4">
                            <input class="form-control" placeholder="name@example.com" type="email">
                            <label>User Name</label>
                        </div>
                        <div class="form-floating mb-4">
                            <input class="form-control" placeholder="Password" type="password">
                            <label>Password</label>
                        </div>
                        <div class="form-group">
                            <button class="btn btn-primary full-width font--bold btn-lg" type="submit">Log In
                            </button>
                        </div>
                        <div class="modal-flex-item mb-3">
                            <div class="modal-flex-first">
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" id="savepassword" type="checkbox"
                                           value="option1">
                                    <label class="form-check-label" for="savepassword">Save Password</label>
                                </div>
                            </div>
                            <div class="modal-flex-last">
                                <a href="${pageContext.request.contextPath}/forgotpass">Forget Password?</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal-footer">
                <p>Don't have an account yet?<a class="text-primary font--bold ms-1" href="signup.html">Sign Up</a>
                </p>
            </div>
        </div>
    </div>
</div>