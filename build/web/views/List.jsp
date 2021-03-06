<%-- 
    Document   : List.jsp
    Created on : Jun 12, 2022, 9:43:57 PM
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
        <title>ListOfProduct</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <link rel="stylesheet" href="../assets/css/HomePage.css">
        <link rel="stylesheet" href="../assets/css/ListOfProduct.css">
        <link rel="stylesheet" href="../assets/css/Main.css">
        <link rel="icon" href="./assets/image/logo_transparent.png" type="image/x-icon">

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
                                <img src="../assets/image/bubble-tea.png" alt="" class="link-icon">
                                <span class="categori-name">Milk Tea and Teas</span>
                            </a>
                        </li>
                        <li class="category-item navi-text nav-list ">
                            <a href="?category=Bread" class="categori-link selected-item">
                                <img src="../assets/image/bread (1).png" alt="" class="link-icon">
                                <span class="categori-name">Bread</span>
                            </a>
                        </li>
                        <li class="category-item navi-text nav-list ">
                            <a href="?category=Coffee" class="categori-link selected-item">
                                <img src="../assets/image/coffee-cup.png" alt="" class="link-icon">
                                <span class="categori-name">Coffee</span>
                            </a>
                        </li>
                        <li class="category-item navi-text nav-list ">
                            <a href="?category=FastFood" class="categori-link selected-item">
                                <img src="../assets/image/burger.png" alt="" class="link-icon">
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
                        <c:forEach var="food" items="${listOfFood}" varStatus="loop">
                            <div class="product-item-detail col-md-2">
                                <img src="${food.imgLink1}" alt="" class="product-item-image">
                                <div class="product-item-description">
                                    <span class="product-name">${food.foodName}</span>
                                    <form action="" class="view-detail">
                                        <input type="hidden" name="detail" value="" />
                                        <button type="submit" value="View" class="btn-view" name="viewDetails">
                                            <a href="../Detail/detailFood?detail=${food.foodID}">View detail</a>
                                    </form>
                                </div>
                            </div>
                        </c:forEach>


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
                    <div class="sort-wrapper">
                        <span class="sort-title">Sort</span>
                        <div class="sort-detail">
                            <div class="sorting-block" >
                                <span class="sorting-content">
                                    <a href="?sort=ASC" class="sorting-link">Price:Increasing</a>
                                </span>
                            </div>
                            <div class="sorting-block">
                                <span class="sorting-content">
                                    <a href="?sort=DESC" class="sorting-link">Price:Decreasing</a>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
        <%@include file="Layout/Footer.jsp" %>
    </body>
    <script src="javascript/ListOfProduct.js"></script>
</html>
