<%-- 
    Document   : List.jsp
    Created on : Jun 12, 2022, 9:43:57 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ListOfProduct</title>
    <link rel="stylesheet" href="css/FontAwesome/css/all.min.css">
    <link rel="stylesheet" href="css/HomePage.css">
    <link rel="stylesheet" href="css/ListOfProduct.css">
    <link rel="stylesheet" href="css/Main.css">
    <link rel="icon" href="image/logo_transparent.png" type="image/x-icon">

    <!-- Bootstrap link embed in here -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</head>
<body>
    <div class="container-fluid">
        <div class="row list-header col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <span class="list-header-content">Welcome to F-Foods</span>
        </div>
        <div class="row list-body">
            <div class="col-md-3 list-navigation">
                <!-- <h3 class="navigation-tittle navi-text">Danh mục</h3> -->
                <ul class="list-categories">
                    <li class="category-item navi-text">
                        <span class="list-tittle">Menu</span>
                    </li>
                    <li class="category-item navi-text nav-list  ">
                        <a href="?category=MilkTea" class="categori-link selected-item">
                            <img src="image/bubble-tea.png" alt="" class="link-icon">
                            <span class="categori-name">Milk Tea and Teas</span>
                        </a>
                    </li>
                    <li class="category-item navi-text nav-list ">
                        <a href="?category=Bread" class="categori-link selected-item">
                            <img src="image/bread (1).png" alt="" class="link-icon">
                            <span class="categori-name">Bread</span>
                        </a>
                    </li>
                    <li class="category-item navi-text nav-list ">
                        <a href="?category=Coffee" class="categori-link selected-item">
                            <img src="image/coffee-cup.png" alt="" class="link-icon">
                            <span class="categori-name">Coffee</span>
                        </a>
                    </li>
                    <li class="category-item navi-text nav-list ">
                        <a href="?category=FastFood" class="categori-link selected-item">
                            <img src="image/burger.png" alt="" class="link-icon">
                            <span class="categori-name">Fast Foods</span>
                        </a>
                    </li>
                    
                </ul>
            </div>
            <div class="list-our-product col-md-7">
                <div class="form-search">
                    <form action="" class="search-food">
                        <input type="text" name="search" placeholder="Search food by key">
                        <input type="submit" value="Search">
                    </form>
                </div>
                <div class="list-product-item">
                    <div class="product-item-detail col-md-2">
                        <img src="image/milkTea.jpg" alt="" class="product-item-image">
                        <div class="product-item-description">
                            <span class="product-name">Traditional Milk tea</span>
                            <form action="" class="view-detail">
                                <input type="hidden" name="detail" value="" />
                                <button type="submit" value="View" class="btn-view">View 1</button>
                            </form>
                        </div>
                    </div>
                    <div class="product-item-detail col-md-2">
                        <img src="image/milkTea.jpg" alt="" class="product-item-image">
                        <div class="product-item-description">
                            <span class="product-name">Traditional Milk tea</span>
                            <form action="" class="view-detail">
                                <input type="hidden" name="detail" value="" />
                                <button type="submit" value="View" class="btn-view">View2</button>
                            </form>
                        </div>
                    </div>
                    <div class="product-item-detail col-md-2">
                        <img src="image/milkTea.jpg" alt="" class="product-item-image">
                        <div class="product-item-description">
                            <span class="product-name">Traditional Milk tea</span>
                            <form action="" class="view-detail" method="POST">
                                <input type="hidden" name="detail" value="" />
                                <button type="submit" value="View" class="btn-view">View3</button>
                            </form>
                        </div>
                    </div>
                    <div class="product-item-detail col-md-2">
                        <img src="image/milkTea.jpg" alt="" class="product-item-image">
                        <div class="product-item-description">
                            <span class="product-name">Traditional Milk tea</span>
                            <form action="" class="view-detail">
                                <input type="hidden" name="detail" value="" />
                                <button type="submit" value="View" class="btn-view">View4</button>
                            </form>
                        </div>
                    </div>
                    <div class="product-item-detail col-md-2">
                        <img src="image/milkTea.jpg" alt="" class="product-item-image">
                        <div class="product-item-description">
                            <span class="product-name">Traditional Milk tea</span>
                            <form action="" class="view-detail">
                                <input type="hidden" name="detail" value="" />
                                <button type="submit" value="View" class="btn-view">View5</button>
                            </form>
                        </div>
                    </div>
                    <div class="product-item-detail col-md-2 ">
                        <img src="image/milkTea.jpg" alt="" class="product-item-image">
                        <div class="product-item-description">
                            <span class="product-name">Traditional Milk tea</span>
                            <form action="" class="view-detail">
                                <input type="hidden" name="detail" value="" />
                                <button type="submit" value="View" class="btn-view">View6</button>
                            </form>
                        </div>
                    </div>
                    <div class="product-item-detail col-md-2 ">
                        <img src="image/milkTea.jpg" alt="" class="product-item-image">
                        <div class="product-item-description">
                            <span class="product-name">Traditional Milk tea</span>
                            <form action="" class="view-detail">
                                <input type="hidden" name="detail" value="" />
                                <button type="submit" value="View" class="btn-view">View7</button>
                            </form>
                        </div>
                    </div>
                    <div class="product-item-detail col-md-2 ">
                        <img src="image/milkTea.jpg" alt="" class="product-item-image">
                        <div class="product-item-description">
                            <span class="product-name">Traditional Milk tea</span>
                            <form action="" class="view-detail">
                                <input type="hidden" name="detail" value="" />
                                <button type="submit" value="View" class="btn-view">View</button>
                            </form>
                        </div>
                    </div>
                    <div class="product-item-detail col-md-2 ">
                        <img src="image/milkTea.jpg" alt="" class="product-item-image">
                        <div class="product-item-description">
                            <span class="product-name">Traditional Milk tea</span>
                            <form action="" class="view-detail">
                                <input type="hidden" name="detail" value="" />
                                <button type="submit" value="View" class="btn-view">View</button>
                            </form>
                        </div>
                    </div>
                    <div class="product-item-detail col-md-2 ">
                        <img src="image/milkTea.jpg" alt="" class="product-item-image">
                        <div class="product-item-description">
                            <span class="product-name">Traditional Milk tea</span>
                            <form action="" class="view-detail">
                                <input type="hidden" name="detail" value="" />
                                <button type="submit" value="View" class="btn-view">View</button>
                            </form>
                        </div>
                    </div>
                    <div class="product-item-detail col-md-2">
                        <img src="image/milkTea.jpg" alt="" class="product-item-image">
                        <div class="product-item-description">
                            <span class="product-name">Traditional Milk tea</span>
                            <form action="" class="view-detail">
                                <input type="hidden" name="detail" value="" />
                                <button type="submit" value="View" class="btn-view">View 9</button>
                            </form>
                        </div>
                    </div>
                    <div class="product-item-detail col-md-2">
                        <img src="image/milkTea.jpg" alt="" class="product-item-image">
                        <div class="product-item-description">
                            <span class="product-name">Traditional Milk tea</span>
                            <form action="" class="view-detail">
                                <input type="hidden" name="detail" value="" />
                                <button type="submit" value="View" class="btn-view">View10</button>
                            </form>
                        </div>
                    </div>
                    <div class="product-item-detail col-md-2">
                        <img src="image/milkTea.jpg" alt="" class="product-item-image">
                        <div class="product-item-description">
                            <span class="product-name">Traditional Milk tea</span>
                            <form action="" class="view-detail" method="POST">
                                <input type="hidden" name="detail" value="" />
                                <button type="submit" value="View" class="btn-view">View11</button>
                            </form>
                        </div>
                    </div>
                    <div class="product-item-detail col-md-2">
                        <img src="image/milkTea.jpg" alt="" class="product-item-image">
                        <div class="product-item-description">
                            <span class="product-name">Traditional Milk tea</span>
                            <form action="" class="view-detail">
                                <input type="hidden" name="detail" value="" />
                                <button type="submit" value="View" class="btn-view">View12</button>
                            </form>
                        </div>
                    </div>
                    <div class="product-item-detail col-md-2">
                        <img src="image/milkTea.jpg" alt="" class="product-item-image">
                        <div class="product-item-description">
                            <span class="product-name">Traditional Milk tea</span>
                            <form action="" class="view-detail">
                                <input type="hidden" name="detail" value="" />
                                <button type="submit" value="View" class="btn-view">View13</button>
                            </form>
                        </div>
                    </div>
                    
                </div>
                <div class="paging-list">
                    <div class="paging-icon page-nav active previous-button">
                        <i class="fa-solid fa-backward"></i>
                    </div>
                    <div class="paging-number page-nav">
                        <span class="number-page ">1</span>
                    </div>
                    <div class="paging-number page-nav">
                        <span class="number-page">2</span>
                    </div>
                    <div class="paging-icon page-nav next-button">
                        <i class="fa-solid fa-forward"></i>
                    </div>
                </div>
                
            </div>
            <div class="list-of-sort col-md-2">
                <select name="sorting" class="combo-box-sort">
                    <option value="default" class="sort-option select">Sort</option>
                    <option value="price_increasing" class="sort-option">Price : Increasing</option>
                    <option value="price_decending" class="sort-option">Price : Decending </option>
                </select>
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
<script src="javascript/ListOfProduct.js"></script>
</html>
