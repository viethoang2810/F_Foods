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
        <%@include file="Layout/Header.jsp" %>
        <div class="container-fluid">
            <div class="row detail-content">
                <div class="product-detail-description left col-md-7 col-sm-12 col-xs 12 ">
                    <img src="${foodDetail.imgLink1}" alt="" class="description-image ">
                    <div class="product-image-more hover-zoom">
                        <img src="${foodDetail.imgLink1}" alt="" class="image-more">
                        <img src="${foodDetail.imgLink2}" alt="" class="image-more">
                        <img src="${foodDetail.imgLink3}" alt="" class="image-more">
                    </div>
                </div>
                <div class="product-detail-description right col-md-5 col-sm-12 col-xs 12">
                    <h3 class="product-detail-name title">${foodDetail.foodName}</h3>
                    <div class="description-content">
                        <h5 class="description-title title">Description</h5>
                        <p class="description-text">${foodDetail.description}</p>
                    </div>
                    <div class="product-infor-more">
                        <h5 class="total-selling-title title">Price :</h5>
                        <span class="original-price" style="text-decoration: line-through;">${foodDetail.originalPrice}</span>
                        </br>
                        <span class="total-selling-amount">${foodDetail.finalPrice}</span>
                    </div>
                    <div class="cart-order-product">
                        <form action="" class="buying-form">
                            <input type="hidden" name="foodId" value="${foodDetail.foodID}">
                            <button type="submit" name="addCart" class="btn-buying btn-action" value="add">
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
                    <form action="${request.contextPath()}" class="comment-area">
                        <input type="hidden" name="detail" value="${foodDetail.foodID}">
                        <input type="hidden" name="user" value="${usersession.username}">
                        <input type="hidden" name="id" value="${foodDetail.foodID}">
                        <textarea rows="8" cols="100" name="contentOfComment"  placeholder="Enter your comment"
                                  class="form-control" ></textarea>
                        <button type="submit" class="btn-comment" name="comment" value="add">Comment</button>
                    </form>
                </div>
                <div class="comment-list" style="margin-top: 20px;">
                    <div class="comment-wrapper">
                        <c:forEach var="comment" items="${listComment}" >
                            <div class="comment-item ">
                                <div class="commenter-infor col-md-2">
                                    <span class="user-comment-name">${comment.username}</span>
                                </div>
                                <div class="comment-content">
                                    <p class="date-of-comment" style="text-align: left;">${comment.dateOfComment}</p>
                                    <span class="comment-line">${comment.content}</span>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div class="row associate-product">
                <h3 class="list-title title-heading">Associated Products</h3>
                <div class="list-product-associate">
                    <c:forEach var="random" items="${randomFood}" varStatus="loop">
                        <div class="associate-item col-lg-2 col-md-4 col-sm-6 col-xs-12">
                            <img src="${random.imgLink1}" alt="" class="associate-product-img">
                            <div class="associate-product-detail">
                                <span class="associate-product-name">${random.foodName}</span>
                                <form action="" class="view-detail">
                                    <input type="hidden" name="detail" value="${random.foodID}" />
                                    <button type="submit" value="View" class="btn-view">View</button>
                                </form>
                            </div>
                        </div>

                    </c:forEach>


                </div>
            </div>

        </div>
        <%@include file="Layout/Footer.jsp" %>
    </body>
    <script src="../assets/javascript/DetailProduct.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</html>
