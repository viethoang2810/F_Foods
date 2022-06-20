<%-- 
    Document   : Login
    Created on : Jun 15, 2022, 1:58:52 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <link rel="stylesheet" href="../assets/css/Login.css">
        <link rel="stylesheet" href="../assets/css/Responsive.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    </head>

    <body>
        <div class="container-wrapper">
            <div class="container">
                <div class="row login-wrapper">
                    <div class="slider-side col-sm-6">
                        <div class="slider ">
                            <div class="slide-wrapper">
                                <div class="slider-main">
                                    <div class="slider-item">
                                        <img src="../assets/image/VNO_fastfood1.jpg" alt="" class="slider-img img-responsive">
                                    </div>
                                    <div class="slider-item">
                                        <img src="../assets/image/hotdog-com-vn-cach-lam-hot-dog-3.jpg" alt=""
                                             class="slider-img img-responsive">
                                    </div>
                                    <div class="slider-item">
                                        <img src="../assets/image/milkTea.jpg" alt="" class="slider-img img-responsive">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 login-actions">
                        <div class="logo">
                            <img src="../assets/image/logo_transparent.png" alt="" class="logo-image img-responsive">
                        </div>
                        <div class="form-wrapper ">
                            <div class="form-process">
                                <form action="" method="post" class="form-login enable-form">
                                    <div class="input-block">
                                        <div class="lable">
                                            <lable class="input-lable" for="username">Username</lable>
                                        </div>
                                        <div class="input-text">
                                            <input type="text" class="input-item input-username"
                                                   placeholder="Enter username" name="username">
                                        </div>
                                    </div>
                                    <div class="input-block">
                                        <div class="lable">
                                            <lable class="input-lable" for="password ">Password</lable>
                                        </div>
                                        <div class="input-text">
                                            <input type="password" class="input-item input-password"
                                                   placeholder="Enter password" name="password">
                                            <i class="fa-solid fa-eye pass-visible"></i>
                                        </div>
                                    </div>
                                    <div class="input-submit-btn">
                                        <div class="btn-action">
                                            <input type="submit" name="Login" value="Login" class="submit-btn">
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="create-account-link">
                                <span class="create-account-content">Create your account</span>
                            </div>
                        </div>
                        <div class="form-wrapper disable-form" style="margin-top: -3px;">
                            <div class="form-process">
                                <form action="" method="post" class="form-login">
                                    <div class="input-block">
                                        <div class="lable">
                                            <lable class="input-lable" for="username">Username</lable>
                                        </div>
                                        <div class="input-text">
                                            <input type="text" class="input-item input-username"
                                                   placeholder="Enter username" name="username">
                                        </div>
                                    </div>
                                    <div class="input-block">
                                        <div class="lable">
                                            <lable class="input-lable" for="password ">Password</lable>
                                        </div>
                                        <div class="input-text">
                                            <input type="password" class="input-item input-password"
                                                   placeholder="Enter password" name="password">
                                            <i class="fa-solid fa-eye pass-visible"></i>
                                        </div>
                                    </div>
                                    <div class="input-block">
                                        <div class="lable">
                                            <lable class="input-lable" for="phonenumber">Your phone numer</lable>
                                        </div>
                                        <div class="input-text">
                                            <input type="text" class="input-item "
                                                   placeholder="Your phone number is ....." name="phonenumber">
                                        </div>
                                    </div>
                                    <div class="input-block">
                                        <div class="lable">
                                            <lable class="input-lable" for="Address">Address</lable>
                                        </div>
                                        <div class="input-text">
                                            <input type="t" class="input-item "
                                                   placeholder="Confirm password" name="Address">

                                        </div>
                                    </div>
                                    <div class="input-submit-btn">
                                        <div class="btn-action">
                                            <input type="submit" name="signup" value="Sign-Up" class="submit-btn">
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="create-account-link">
                                <span class="create-account-content">Login now</span>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </body>
    <script src="../assets/javascript/sliderLogin.js"></script>

</html>
