<%-- 
    Document   : DetailProduct
    Created on : Jun 15, 2022, 1:58:10 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ProductDetail</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <link rel="stylesheet" href="../assets/css/Main.css">
        <link rel="stylesheet" href="../assets/css/Detail.css">
        <!-- Bootstrap link embed in here -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    </head>

    <body>
        <div class="container-fluid">
            <div class="row detail-content">
                <div class="product-detail-description left col-md-7 col-sm-12 col-xs 12 ">
                    <img src="" alt="" class="description-image ">
                    <div class="product-image-more hover-zoom">
                        <img src="../assets/image/milkTea.jpg" alt="" class="image-more ">
                        <img src="../assets/image/VNO_fastfood1.jpg" alt="" class="image-more">
                        <img src="../assets/image/VNO_fastfood1.jpg" alt="" class="image-more">
                        <img src="../assets/image/VNO_fastfood1.jpg" alt="" class="image-more">
                    </div>
                </div>
                <div class="product-detail-description right col-md-5 col-sm-12 col-xs 12">
                    <h3 class="product-detail-name title">Traditional Milk Tea</h3>
                    <div class="description-content">
                        <h5 class="description-title title">Description</h5>
                        <p class="description-text">sigdysduihfsdfhsduoifhusdfhsdufhsdfsdhfiusdhfsdiuhf</p>
                    </div>
                    <div class="product-infor-more">
                        <h5 class="total-selling-title title">Price :</h5>
                        <span class="original-price" style="text-decoration: line-through;"> 200.000</span>
                        </br>
                        <span class="total-selling-amount">100.000</span>
                    </div>
                    <div class="cart-order-product">
                        <form action="" class="buying-form">
                            <input type="hidden" name="foodId" value="">;s
                            <button type="submit" name="addCart " class="btn-buying btn-action">
                                <i class="fa-solid fa-cart-plus"></i>
                                <span class="addCart-content">Add to your cart</span>
                            </button>
                            <button type="submit" name="buyNow" class="btn-buying btn-action">
                                <i class="fa-solid fa-circle-dollar-to-slot"></i>
                                <span class="buyNow-content">Buy now</span>
                            </button>

                        </form>
                    </div>
                </div>
            </div>
            <div class="row comment-product ">
                <h3 class="comment-title title-heading">Comment</h3>
                <div class="comment-form">
                    <form action="" class="comment-area">
                        <textarea rows="8" cols="100" name="comment" form="comment-area" placeholder="Enter your comment"
                                  class="form-control"></textarea>
                        <button type="submit" class="btn-comment">Comment</button>
                    </form>
                </div>
                <div class="comment-list">
                    <div class="comment-wrapper">
                        <div class="comment-item ">
                            <div class="commenter-infor col-md-2">
                                <img src="image/Fast-Food-Wallpaper-.jpg" alt="" class="commenter-img  rounded-circle">
                            </div>
                            <div class="comment-content">
                                <span class="comment-line">gióhbudgysgfdsgfysdgfyisdgfyisd</span>
                            </div>
                        </div>
                        <div class="comment-item ">
                            <div class="commenter-infor col-md-2">
                                <img src="image/Fast-Food-Wallpaper-.jpg" alt="" class="commenter-img  rounded-circle">
                            </div>
                            <div class="comment-content">
                                <span class="comment-line">gióhbudgysgfdsgfysdgfyisdgfyisd</span>
                            </div>
                        </div>
                        <div class="comment-item ">
                            <div class="commenter-infor col-md-2">
                                <img src="image/Fast-Food-Wallpaper-.jpg" alt="" class="commenter-img  rounded-circle">
                            </div>
                            <div class="comment-content">
                                <span class="comment-line">gióhbudgysgfdsgfysdgfyisdgfyisd</span>
                            </div>
                        </div>
                        <div class="comment-item ">
                            <div class="commenter-infor col-md-2">
                                <img src="image/Fast-Food-Wallpaper-.jpg" alt="" class="commenter-img  rounded-circle">
                            </div>
                            <div class="comment-content">
                                <span class="comment-line">gióhbudgysgfdsgfysdgfyisdgfyisd</span>
                            </div>
                        </div>
                        <div class="comment-item ">
                            <div class="commenter-infor col-md-2">
                                <img src="image/Fast-Food-Wallpaper-.jpg" alt="" class="commenter-img  rounded-circle">
                            </div>
                            <div class="comment-content">
                                <span class="comment-line">gióhbudgysgfdsgfysdgfyisdgfyisd</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row associate-product">
                <h3 class="list-title title-heading">Associated Products</h3>
                <div class="list-product-associate">
                    <div class="associate-item col-lg-2 col-md-4 col-sm-6 col-xs-12">
                        <img src="image/hotdog-com-vn-cach-lam-hot-dog-3.jpg" alt="" class="associate-product-img">
                        <div class="associate-product-detail">
                            <span class="associate-product-name">Traditional Milk Tea</span>
                            <form action="" class="view-detail">
                                <input type="hidden" name="detail" value="" />
                                <button type="submit" value="View" class="btn-view">View</button>
                            </form>
                        </div>
                    </div>
                    <div class="associate-item col-lg-2 col-md-4 col-sm-6 col-xs-12">
                        <img src="image/hotdog-com-vn-cach-lam-hot-dog-3.jpg" alt="" class="associate-product-img">
                        <div class="associate-product-detail">
                            <span class="associate-product-name">Traditional Milk Tea</span>
                            <form action="" class="view-detail">
                                <input type="hidden" name="detail" value="" />
                                <button type="submit" value="View" class="btn-view">View</button>
                            </form>
                        </div>
                    </div>
                    <div class="associate-item col-lg-2 col-md-4 col-sm-6 col-xs-12">
                        <img src="image/hotdog-com-vn-cach-lam-hot-dog-3.jpg" alt="" class="associate-product-img">
                        <div class="associate-product-detail">
                            <span class="associate-product-name">Traditional Milk Tea</span>
                            <form action="" class="view-detail">
                                <input type="hidden" name="detail" value="" />
                                <button type="submit" value="View" class="btn-view">View</button>
                            </form>
                        </div>
                    </div>
                    <div class="associate-item col-lg-2 col-md-4 col-sm-6 col-xs-12">
                        <img src="image/hotdog-com-vn-cach-lam-hot-dog-3.jpg" alt="" class="associate-product-img">
                        <div class="associate-product-detail">
                            <span class="associate-product-name">Traditional Milk Tea</span>
                            <form action="" class="view-detail">
                                <input type="hidden" name="detail" value="" />
                                <button type="submit" value="View" class="btn-view">View</button>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
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
    <script src="javascript/DetailProduct.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</html>
