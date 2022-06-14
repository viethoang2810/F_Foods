<%-- 
    Document   : Header
    Created on : Jun 15, 2022, 1:17:07 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Header</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="../../assets/css/HomePage.css">
    <link rel="stylesheet" href="../../assets/css/responsive.css">
    <!-- Bootstrap link embed in here -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</head>
<body>
    <div class="container-fluid" style="z-index: 1;">
        <div class="row header-row">
            <div class="header-left ">
                <div class="header-logo ">
                    <img src="../assets/image/logo_transparent.png" alt="" class="logo-image img-responsive" style="width:200px">
                </div>
                <div class="navigation ">
                    <button class="btn-bar">
                        <i class="fa-solid fa-bars"></i>
                    </button>
                    <div class="navigation-block">
                        <nav class="navigation-bar">
                            <div class="navigation-dropdown">
                                <ul class="navigation-link-list">
                                    <li class="navigation-item "><a href="/Home/HomePage" class="link-item">Home</a></li>
                                    <li class="navigation-item "><a href="#about-us" class="link-item">About</a></li>
                                    <li class="navigation-item "><a href="#footer" class="link-item">Contact</a></li>
                                    <li class="navigation-item "><a href="Food/list" class="link-item">Restaurant</a></li>
                                    <li class="navigation-item "><a href="" class="link-item acount-link">Log out</a></li>

                                </ul>
                            </div>
                        </nav>
                    </div>

                    <div class="header-right col-md-3">
                        <div class="header-right-notify right-side">
                            <i class="fa-solid fa-bell "></i>
                            <div class="notify-amount">
                                <span class="amount">0</span>
                            </div>
                        </div>
                        <div class="header-right-cart right-side">
                            <i class="fa-brands fa-opencart"></i>
                            <div class="cart-amount">
                                <span class="amount">0</span>
                            </div>
                        </div>
                        <div class="header-right-account right-side">
                            <div class="account-avatar">
                                <i class="fa-solid fa-user-tie"></i>
                            </div>
                            <div class="account-infor">
                                <span class="account-infor__name">User</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="javascript/HomePage.js"></script>

</html>
