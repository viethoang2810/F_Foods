<%-- 
    Document   : Cart
    Created on : Jun 15, 2022, 1:58:26 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Shopping Cart</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <link rel="stylesheet" href="../assets/css/Cart.css">
        <link rel="stylesheet" href="../assets/css/Main.css">
        <link rel="icon" href="../assets/image/logo_transparent.png" type="image/x-icon">
        <!-- Bootstrap link embed in here -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    </head>

    <body>
        <%@include file="Layout/Header.jsp" %>
        <div class="container " >

            <div style="background-color: #fff; width: 100% ; height: 200px">

            </div>

            <div class="row cart-title">
                <span class="title-content">SHOPPING CART</span>
            </div>
            <div class=" row cart-table ">
                <table class="table">
                    <thead>
                        <tr>
                            <th class="text-center">Food Item</th>
                            <th class="text-center"></th>
                            <th class="text-center">Quantity</th>
                            <th class="text-center">Price</th>
                            <th class="text-center"></th>
                        </tr>
                    </thead>
                    <tbody class="table-body">
                        <c:forEach var="item" items="${listItem}">
                            <tr class="table-row">
                                <td class="item-image-description table-data">
                                    <img src="${item.food.imgLink1}" alt=""  class="item-img table-data-child">
                                </td>
                                <td class="item-name-description table-data ">
                                    <span class="item-name table-data-child">${item.food.foodName}</span>
                                </td>
                                <td class="item-quantity-description table-data ">
                                    <div class="input-wrapper table-data-child">
                                        <div class="button-action minus-action">
                                            <button class="btn-icon">
                                                <i class="fa-solid fa-minus"></i>
                                            </button>
                                        </div>
                                        <input type="hidden" name="original-price" class="original-price" value="${item.food.originalPrice}">
                                        <input type="number" step="1" min="1" max="" name="quantity" value="1" title="Qty"
                                               class="input-text qty text quantity" size="4" pattern="" inputmode=""
                                               style="text-align:center">
                                        <div class="button-action plus-action">
                                            <button class="btn-icon plus">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                        </div>
                                    </div>
                                </td>
                                <td class="item-price-description table-data">
                                    <div class="wrapper price-wrapper table-data-child">
                                        <span class="item-price "></span>
                                    </div>
                                </td>
                                <td class="remove-item table-data">
                                    <div class="remove-wrapper wrapper table-data-child">
                                        <a href="?removeId=${item.food.foodID}" class="remove-item-link">
                                            <i class="fa-solid fa-trash "></i>
                                        </a>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach> 
                    </tbody>
                </table>

            </div>
            <div class="row bill-checkout">
                <div class="bill-infor-wrapper col-md-8 col-sm-12">
                    <div class="bill-header-title bill-info">
                        <h3 class="title-detail" style="margin-left: 70px;">Your Invoice Bill</h3>
                    </div>
                    <div class="bill-body-infor ">
                        <div class="bill-amount-item  bill-info">
                            <span class="bill-col-name ">Total item(s) in your cart :</span>
                            <span class="bill-col-amount amount-col amount-item">123123213</span>
                        </div>
                        <div class="bill-price bill-info">
                            <span class="bill-col-name ">Total price :</span>
                            <span class="bill-col-amount amount-col total-price">2342354351</span>
                        </div>
                        <div class="bill-discount bill-info">
                            <span class="bill-col-name ">Discount :</span>
                            <span class="bill-col-amount amount-col">10%</span>
                        </div>
                        <div class="bill-final-price bill-info">
                            <span class="bill-col-name ">Final price :</span>
                            <span class="bill-col-amount amount-col final-price">1259874</span>
                        </div>
                    </div>
                </div>
                <div class="bill-form-wrapper col-md-4 col-sm-12">
                    <form action="${request.contextPath()}" class="bill-form" method="post">
                        <input type="hidden" name="totalPrice" class="totalPrice" value="" />
                        <input type="hidden" name="userCart" class="userCart" value="${usersession.username}">
                        <input type="hidden" name="itemList" class="hiddenList">
                        <h3 class="customer-infor">Customer Information</h3>
                        <div class="customer input">
                            <label for="name" class="customer-label">Your name</label>
                            <input type="text" class="customer-input" name="name">
                        </div>
                        <div class="customer input">
                            <label for="phone" class="customer-label">Phone number</label>
                            <input type="text" class="customer-input" name="phone">
                        </div>
                        <div class="customer input">
                            <label for="address" class="customer-label">Delivery Address </label>
                            <input type="text" class="customer-input" name="address">
                        </div>
                        <div class="btn-submit">
                            <input type="submit" value="Check-out" name="checkout-sub" class="btn-submit-action">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="container-fluid">
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
                                        <p>Copyright Design Sherif Hamdy ?? 2019. All rights reserved.</p>
                                    </div>
                                </div>
                            </div>
                        </div> -->
                </footer>
            </div>
        </div>
    </body>
    <script src="../assets/javascript/Cart.js"></script>

</html>