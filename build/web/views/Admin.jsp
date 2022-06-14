<%-- 
    Document   : Admin
    Created on : Jun 15, 2022, 1:58:41 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admid F-Foods</title>
    <link rel="stylesheet" href="css/Main.css">
    <link rel="stylesheet" href="css/FontAwesome/css/all.min.css">
    <link rel="stylesheet" href="css/admin.css">
    <!-- Bootstrap link embed in here -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</head>

<body>
    <div class="container-fluid">
        <div class="row wrapper">
            <div class="navigation-col col-md-2" style="background-color: rgb(223, 141, 41); ">
                <img src="image/logo_transparent.png" alt="" class="admin-logo">
                <h7 class="account-title">Account</h7>
                <div class="admin-account admin-block">
                    <i class="fas fa-laugh-wink"></i>
                    <span class="account-name">Administrator</span>
                    <div class="account-admin-detail">
                        <div class="account-detail" style="background-color:black;">
                            <i class="fa-solid fa-arrow-right-from-bracket"></i>
                            <span class="log-out">Log-out</span>
                        </div>
                    </div>
                </div>
                <h7 class="account-title">Overview</h7>
                <div class="overview-page admin-block">
                    <span class="overview-title">
                        <a href="" class="overview-link">Dashboard</a>
                    </span>
                </div>
                <h7 class="account-title">Statistic Pages</h7>
                <div class="pages-wrapper">
                    <ul class="list-page">
                        <li class="page-item">
                            <a href="#customer-infor" class="page-link">Customer Information</a>
                        </li>
                        <li class="page-item">
                            <a href="" class="page-link">Order Information</a>
                        </li>
                        <li class="page-item">
                            <a href="" class="page-link">Order Management</a>
                        </li>
                        <li class="page-item">
                            <a href="" class="page-link">Foods Management</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="detail-col col-md-10" style="overflow-y: scroll; height: 100vh;">
                <div class="detail-dashboard">
                    <h4 class="dashboard-title">Dashboard</h4>
                    <div class="dashboard-overview">
                        <div class="dashboard-item col-md-5 col-sm-12" style="border-left: 7px solid green;">
                            <div class="item-infor">
                                <span class="item-infor-title item-title" >Total Income</span>
                                <span class="item-infor-money item-title">100.000VNĐ</span>
                            </div>
                            <div class="item-icon" >
                                <i class="fa-solid fa-sack-dollar" ></i>
                            </div>
                        </div>
                        <div class="dashboard-item col-md-5 col-sm-12" style="border-left: 7px solid rgb(234, 159, 10);">
                            <div class="item-infor">
                                <span class="item-infor-title item-title">Total Order</span>
                                <span class="item-infor-money item-title">100</span>
                            </div>
                            <div class="item-icon" >
                                <i class="fa-solid fa-bag-shopping"></i>
                            </div>
                        </div>
                        <div class="dashboard-item col-md-5 col-sm-12" style="border-left: 7px solid blue;">
                            <div class="item-infor">
                                <span class="item-infor-title item-title">Amount of foods</span>
                                <span class="item-infor-money item-title">36</span>
                            </div>
                            <div class="item-icon" >
                                <i class="fa-solid fa-utensils"></i>
                            </div>
                        </div>
                        <div class="dashboard-item col-md-5 col-sm-12" style="border-left: 7px solid rgb(221, 10, 204);">
                            <div class="item-infor">
                                <span class="item-infor-title item-title">Amount of Discount Foods</span>
                                <span class="item-infor-money item-title">100</span>
                            </div>
                            <div class="item-icon" >
                                <i class="fa-solid fa-percent"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="customer-infor text-center">
                    <h4 class="dashboard-title">Customer Information</h4>
                    <table class="table infor-detail text-center">
                        <thead>
                            <th>CusID</th>
                            <th>Full name</th>
                            <th>Address</th>
                            <th>Phone number</th>
                            <th>Date create account</th>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Việt Hoàng</td>
                                <td>Kp2,Tân Thành,Bắc Tân Uyên,Bình Dương</td>
                                <td>0335349368</td>
                                <td>2022-05-12</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="customer-infor text-center">
                    <h4 class="dashboard-title">Order Management</h4>
                    <table class="table infor-detail text-center">
                        <thead>
                            <th class="table-head">CusID</th>
                            <th class="table-head">Full name</th>
                            <th class="table-head">Address </th>
                            <th class="table-head sorting-element">
                                <a href="?sort_by_price=ASC" class="table-head-link">
                                    <span class="title">Total price</span>
                                </a>
                                <a href="?sort_by_price=DESC" class="table-head-link">
                                    <i class="fa-solid fa-sort-down"></i>
                                </a>
                            </th>
                            <th class="table-head">Date order</th>
                            <th class="table-head"></th>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Việt Hoàng</td>
                                <td>Kp2,Tân Thành,Bắc Tân Uyên,Bình Dương</td>
                                <td>0335349368</td>
                                <td>2022-05-12</td>
                                <td>
                                    <button type="button">
                                        <a href="?detailOrder=detail" class="view-detail-link">View detail</a>
                                    </button>
                                </td>
                                
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="customer-infor text-center">
                    <h4 class="dashboard-title" id="customer-infor">Order Information</h4>
                    <table class="table infor-detail text-center">
                        <thead>
                            <th>CusID</th>
                            <th>Full name</th>
                            <th>Item(s) ordered</th>
                            <th>Date create account</th>
                        </thead>
                        <tbody>
                            <tr class="order-table-row">
                                <td>1</td>
                                <td>Việt Hoàng</td>
                                <td>
                                    <table class="table text-center">
                                        <thead>
                                            <th>Item</th>
                                            <th>Amount</th>
                                            <th>Price</th>
                                        </thead>
                                        <tbody class="sub-table-row">
                                            <tr>
                                                <td>1</td>
                                                <td>x2</td>
                                                <td>50.000</td>

                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td>0335349368</td>
                                <td>2022-05-12</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="customer-infor text-center">
                    <h4 class="dashboard-title" id="customer-infor">Foods Information</h4>
                    <div class="create-form">
                        <button class="create-btn">
                            <a href="" class="create-link">Add new food</a>
                        </button>
                    </div>
                    <table class="table infor-detail text-center">
                        <thead>
                            <th>Food ID</th>
                            <th>Food name</th>
                            <th>Image of food</th>
                            <th>Original price</th>
                            <th>Discount percent</th>
                            <th>Final price</th>
                            <th></th>
                        </thead>
                        <tbody>
                            <tr class="table-row">
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td>
                                   <button class="btn-action">
                                       <a href="?action=delete" class="delete-btn ">Delete</a>
                                   </button>
                                   <button class="btn-action">
                                    <a href="?action=edit" class="delete-btn btn-action">Edit</a>
                                </button>
                               </td>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="javascript/admin.js"></script>

</html>
