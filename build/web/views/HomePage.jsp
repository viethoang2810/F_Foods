<%-- 
    Document   : HomePage
    Created on : Jun 15, 2022, 1:44:45 AM
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
        <link rel="stylesheet" href="../assets/css/HomePage.css">
        <link rel="stylesheet" href="../assets/css/responsive.css">
        <link rel="stylesheet" href="../assets/css/Main.css">
        <link rel="stylesheet" href="../assets/css/Detail.css">
        <link rel="stylesheet" href="../assets/css/ListOfProduct.css">

        <!-- Bootstrap link embed in here -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    </head>

    <body>
        <%@include file="Layout/Header.jsp" %>

        <div class="container-fluid" style="z-index: 1;">
            <div class="row body-row__slider">
                <div class="slider-side slider-homepage">
                    <div class="slider ">
                        <div class="slide-wrapper">
                            <div class="slider-main">
                                <div class="slider-item">
                                    <img src="../assets/image/Fast-Food-Wallpaper-.jpg" alt="" class="slider-img img-responsive">
                                </div>
                                <div class="slider-item">
                                    <img src="../assets/image/hotdog-com-vn-cach-lam-hot-dog-3.jpg" alt="" class="slider-img ">
                                </div>
                                <div class="slider-item">
                                    <img src="../assets/image/milkTea.jpg" alt="" class="slider-img ">
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
                <div class="slider-dot">
                    <i class="fa-solid fa-circle-dot dot-slider-handler active"></i>
                    <i class="fa-solid fa-circle-dot dot-slider-handler"></i>
                    <i class="fa-solid fa-circle-dot dot-slider-handler"></i>
                </div>
            </div>
            <div class="tittle-row">
                <h3 class="about-us-tittle">About us</h3>
            </div>
            <div class="row body-about-us" id="about-us">
                <div class="about-us-up">
                    <div class="about-us-infor col-md-7 text-center">
                        <div class="about-us-infor-tittle">
                            <h4 class="infor-tittle">Our Stories</h4>
                        </div>

                        <pre class="infor-content " style="font-size:0.8rem;">
                     As the old saying should go,“If you want something done right at a fast food restaurant, 
                        do it yourself and risk being arrested.” In March, the employees of 
                        a South Carolina Taco Bell were forced to alert the authorities after a dissatisfied 
                        drive-thru customer came inside, demanded a meatier Mexican Pizza, and became 
                        infuriated upon realizing fast food menu items are pretty much prepared 
                        the same way every time. And so this iconic hothead took it upon 
                        himself to go behind the counter and make his 
                    meat-laden pie for the road.PS: He got outta dodge before the police could arrest him. 
                        </pre>




                    </div>
                    <div class="about-us-images col-md-5 col-sm-3 col-xs-1">
                        <!-- <img src="image/hotdog-com-vn-cach-lam-hot-dog-3.jpg" alt="" class="our-image img-responsive"> -->
                        <div class="slider-side ">
                            <div class="slider ">
                                <div class="slide-wrapper">
                                    <div class="slider-main">
                                        <div class="slider-item">
                                            <img src="https://i.pinimg.com/736x/15/12/05/151205aff511e1a637b15bfd38cf29d0.jpg" alt=""
                                                 class="slider-img img-responsive">
                                        </div>
                                        <div class="slider-item">
                                            <img src="../assets/image/hotdog-com-vn-cach-lam-hot-dog-3.jpg" alt=""
                                                 class="slider-img ">
                                        </div>
                                        <div class="slider-item">
                                            <img src="../assets/image/milkTea.jpg" alt="" class="slider-img ">
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="about-us-up down-block">

                    <div class="about-us-images col-md-5 col-sm-3 col-xs-1">
                        <!-- <img src="image/hotdog-com-vn-cach-lam-hot-dog-3.jpg" alt="" class="our-image img-responsive"> -->
                        <div class="slider-side ">
                            <div class="slider ">
                                <div class="slide-wrapper">
                                    <div class="slider-main">
                                        <div class="slider-item">
                                            <img src="https://underscore.factor75.com/wp-content/uploads/2020/03/2-1.png" alt=""
                                                 class="slider-img img-responsive">
                                        </div>
                                        <div class="slider-item">
                                            <img src="../assets/image/hotdog-com-vn-cach-lam-hot-dog-3.jpg" alt=""
                                                 class="slider-img ">
                                        </div>
                                        <div class="slider-item">
                                            <img src="../assets/image/milkTea.jpg" alt="" class="slider-img ">
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="about-us-infor col-md-7 text-center">
                        <div class="about-us-infor-tittle">
                            <h4 class="infor-tittle">Our Mission</h4>
                        </div>

                        <pre class="infor-content " style="font-size:0.8rem;">
                     As the old saying should go,“If you want something done right at a fast food restaurant, 
                        do it yourself and risk being arrested.” In March, the employees of 
                        a South Carolina Taco Bell were forced to alert the authorities after a dissatisfied 
                        drive-thru customer came inside, demanded a meatier Mexican Pizza, and became 
                        infuriated upon realizing fast food menu items are pretty much prepared 
                        the same way every time. And so this iconic hothead took it upon 
                        himself to go behind the counter and make his 
                    meat-laden pie for the road.PS: He got outta dodge before the police could arrest him. 
                        </pre>




                    </div>
                </div>
            </div>
            <div class="tittle-row">
                <h3 class="about-us-tittle">Recommended Product</h3>
            </div>
            <div class="row body-product">
                <c:forEach var="random" items="${randomFood}" varStatus="loop">
                    <div class="associate-item col-lg-2 col-md-4 col-sm-6 col-xs-12" style="padding: 0; ">
                            <img src="${random.imgLink1}" alt="" class="associate-product-img">
                            <div class="associate-product-detail">
                                <span class="associate-product-name">${random.foodName}</span>
                                <form action="${request.contextPath()}" class="view-detail">
                                    <input type="hidden" name="detail" value="${random.foodID}" />
                                    <button type="submit" value="View" class="btn-view" name="viewDetail">View</button>
                                </form>
                            </div>
                        </div>

                    </c:forEach>
            </div>
            <div class="view-more-product">
                <span class="view-more-content">
                    <a href="../Food/list" class="view-more-link">View more product</a>
                    <button class="view-more-btn">
                        <i class="fa-solid fa-angles-right"></i>
                    </button>
                </span>
            </div>
        </div>
        <div class="tittle-row comment">
            <h3 class="about-us-tittle ">Statistics stores</h3>
        </div>
        <div class="row amount-statistic">
            <div class="statistic-wrapper">
                <div class="statistic-detail">
                    <div class="statistic-total-order">
                        <div class="statistic-name">
                            <span class="name-detail">Total Customer </span>
                        </div>
                        <div class="statistic-amount">
                            <span class="amount-detail">${quantityCustomer}+</span>
                        </div>
                    </div>
                    <div class="statistic-total-order">
                        <div class="statistic-name">
                            <span class="name-detail">Total Order </span>
                        </div>
                        <div class="statistic-amount">
                            <span class="amount-detail">134567 </span>
                        </div>
                    </div>
                    <div class="statistic-total-order">
                        <div class="statistic-name">
                            <span class="name-detail">Total Foods </span>
                        </div>
                        <div class="statistic-amount">
                            <span class="amount-detail" >${quantityFood}+</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tittle-row comment">
            <h3 class="about-us-tittle ">Customer Comments</h3>
        </div>
        <div class="row body-comment">
            <div class="review ">
                <div class="review-slider ">
                    <div class="review-slider-wrapper">
                        <div class="review-slider-main">
                            <div class="review-slider-item comment">
                                <div class="review-slider-item-image">
                                    <img src="../assets/image/Fast-Food-Wallpaper-.jpg" alt=""
                                         class="review-slider-img rounded-circle">
                                </div>
                                <div class="slider-comment-content">
                                    <span class="comment-content-detail">Please excuse the partial cup in pic, forgot to
                                        take it earlier</span>
                                </div>
                            </div>
                            <div class="review-slider-item comment">
                                <div class="review-slider-item-image">
                                    <img src="../assets/image/hotdog-com-vn-cach-lam-hot-dog-3.jpg" alt=""
                                         class="review-slider-img rounded-circle">
                                </div>
                                <div class="slider-comment-content">
                                    <span class="comment-content-detail">Please excuse the partial cup in pic, forgot to
                                        take it earlier</span>
                                </div>
                            </div>
                            <div class="review-slider-item comment">
                                <div class="review-slider-item-image">
                                    <img src="../assets/image/Fast-Food-Wallpaper-.jpg" alt=""
                                         class="review-slider-img rounded-circle">
                                </div>
                                <div class="slider-comment-content">
                                    <span class="comment-content-detail">Please excuse the partial cup in pic, forgot to
                                        take it earlier</span>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>

        </div>
        <!-- <footer class="footer-container col-xs-sm-md-12 ">
            <div class="row footer" id="footer">
                <div class="footer-wrapper">
                    <div class="footer-logo ">
                        <img src="image/logo_transparent.png" alt="" class="logo-image img-responsive" style="width:200px">
                    </div>
                    <div class="footer-time-for-work">
                        <h3 class="time-tittle time">Time Opening</h3>
                        <span class="time-morning time">8:00AM ---- 12:00PM</span>
                        <span class="time-afternoon time">12:00AM ---- 22:00PM</span>
                    </div>
                    <div class="footer-branch">
                        <h3 class="address-tittle">Branches Address</h3>
                        <span class="first-branch address">78-80-82 Hoàng Hoa Thám, Phường 12, Quận Tân Bình.</span>
                        <span class="second-branch address">905 Kha Vạn Cân, Phường Linh Tây, Thành phố Thủ Đức.</span>
                    </div>
                    <div class="footer-contact" >
                        <h3 class="contact-tittle">Contact with us</h3>
                        <div class="contact-facebook contact">
                            <i class="fa-brands fa-facebook"></i>
                            <a href="" class="facebook-link">F-Foods</a>
                        </div>
                        <div class="contact-youtube contact">
                            <i class="fa-brands fa-youtube"></i>
                            <a href="" class="youtube-link">F-Foods</a>
                        </div>
                        <div class="contact-tiktok contact">
                            <i class="fa-brands fa-tiktok"></i>
                            <a href="" class="tiktok-link">F-Foods</a>
                        </div>
                    </div>
                </div>
                
            </div>
        </footer> -->
        <div class="row footer-container">
            <footer id="footer" class="footer-1">
                <div class="main-footer widgets-dark typo-light">
                    <div class="container">
                        <div class="row">

                            <div class="col-xs-12 col-sm-6 col-md-3">
                                <div class="widget subscribe no-box">
                                    <h5 class="widget-title">F-Foods<span></span></h5>
                                    <p>About the company, little description will goes here.. </p>
                                </div>
                            </div>


                            <div class="col-xs-12 col-sm-6 col-md-3">
                                <!-- <div class="widget no-box">
                                    <h5 class="widget-title">Quick Links<span></span></h5>
                                    <ul class="thumbnail-widget">
                                        <li>
                                            <div class="thumb-content"><a href="#.">&nbsp;Get Started</a></div>
                                        </li>
                                        <li>
                                            <div class="thumb-content"><a href="#.">&nbsp;Top Leaders</a></div>
                                        </li>
                                        <li>
                                    </ul>
                                </div> -->
                            </div>



                            <div class="col-xs-12 col-sm-6 col-md-3">
                                <div class="widget no-box">
                                    <h5 class="widget-title">Follow up<span></span></h5>
                                    <a href="#"> <i class="fa fa-facebook"> </i> </a>
                                    <a href="#"> <i class="fa fa-twitter"> </i> </a>
                                    <a href="#"> <i class="fa fa-youtube"> </i> </a>
                                </div>
                            </div>
                            <br>
                            <br>


                            <div class="col-xs-12 col-sm-6 col-md-3">
                                <div class="widget no-box">
                                    <h5 class="widget-title">Contact Us<span></span></h5>
                                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.</p>
                                    <div class="emailfield">
                                        <form>
                                        <input type="text" name="email" value="Email">
                                        <input name="uri" type="hidden" value="arabiantheme">
                                        <input name="loc" type="hidden" value="en_US">
                                        <input class="submitbutton ripplelink" type="submit" value="Subscribe">
                                        </form>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                    <!-- <div class="footer-copyright">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12 text-center">
                                    <p>Copyright Design Sherif Hamdy © 2019. All rights reserved.</p>
                                </div>
                            </div>
                        </div>
                    </div> -->
            </footer>
        </div>
    </div>

</body>
<script src="javascript/HomePage.js"></script>

</html>
