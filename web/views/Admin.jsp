<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">


    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admid F-Foods</title>
        <link rel="stylesheet" href="../assets/css/Main.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <link rel="stylesheet" href="../assets/css/Admin.css">
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
                                <a href="?logout=true">
                                    <i class="fa-solid fa-arrow-right-from-bracket"></i>
                                    <span class="log-out">Log-out</span>
                                </a>

                            </div>
                        </div>
                    </div>
                    <h7 class="account-title">Overview</h7>
                    <div class="overview-page admin-block">
                        <span class="overview-title">
                            <a href="#dashboard" class="overview-link">Dashboard</a>
                        </span>
                    </div>
                    <h7 class="account-title">Statistic Pages</h7>
                    <div class="pages-wrapper">
                        <ul class="list-page">
                            <li class="page-item">
                                <a href="#customer-infor" class="page-link">Customer Information</a>
                            </li>
                            <li class="page-item">
                                <a href="#order-infor" class="page-link">Order Information</a>
                            </li>
                            <li class="page-item">
                                <a href="#order-management" class="page-link">Order Management</a>
                            </li>
                            <li class="page-item">
                                <a href="#foods" class="page-link">Foods Management</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="detail-col col-md-10" style="overflow-y: scroll; height: 100vh;">
                    <div class="detail-dashboard" id="dashboard">
                        <h4 class="dashboard-title">Dashboard</h4>
                        <div class="dashboard-overview">
                            <div class="dashboard-item col-md-5 col-sm-12" style="border-left: 7px solid green;">
                                <div class="item-infor">
                                    <span class="item-infor-title item-title">Total Income</span>
                                    <span class="item-infor-money item-title">100.000VND</span>
                                </div>
                                <div class="item-icon">
                                    <i class="fa-solid fa-sack-dollar"></i>
                                </div>
                            </div>
                            <div class="dashboard-item col-md-5 col-sm-12"
                                 style="border-left: 7px solid rgb(234, 159, 10);">
                                <div class="item-infor">
                                    <span class="item-infor-title item-title">Total Order</span>
                                    <span class="item-infor-money item-title">100</span>
                                </div>
                                <div class="item-icon">
                                    <i class="fa-solid fa-bag-shopping"></i>
                                </div>
                            </div>
                            <div class="dashboard-item col-md-5 col-sm-12" style="border-left: 7px solid blue;">
                                <div class="item-infor">
                                    <span class="item-infor-title item-title">Amount of foods</span>
                                    <span class="item-infor-money item-title">${quantity}</span>
                                </div>
                                <div class="item-icon">
                                    <i class="fa-solid fa-utensils"></i>
                                </div>
                            </div>
                            <div class="dashboard-item col-md-5 col-sm-12"
                                 style="border-left: 7px solid rgb(221, 10, 204);">
                                <div class="item-infor">
                                    <span class="item-infor-title item-title">Amount of Discount Foods</span>
                                    <span class="item-infor-money item-title">${discountFood}</span>
                                </div>
                                <div class="item-icon">
                                    <i class="fa-solid fa-percent"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="customer-infor text-center" id="customer-infor">
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
                                <c:forEach var="user" items="${listUser}">
                                    <tr>
                                        <td>${user.userID}</td>
                                        <td>${user.username}</td>
                                        <td>${user.address}</td>
                                        <td>${user.phoneNumber}</td>
                                        <td>${user.dateCreateAccount}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="customer-infor text-center" id="order-management">
                        <h4 class="dashboard-title" >Order Management</h4>
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
                    <div class="customer-infor text-center" id="order-infor">
                        <h4 class="dashboard-title" >Order Information</h4>
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
                    <div class="customer-infor text-center " id="foods">
                        <h4 class="dashboard-title" id="customer-infor">Foods Information</h4>
                        <div class="create-form">
                            <button class="create-btn">
                                Add new food
                            </button>
                            <div class="modal-wrapper create-modal" style="display: none"> 
                                <div class="modal-content-wrapper">
                                    <div class="modal-form">
                                        <h4 class="dashboard-title btnCrete text-center">Create new a food</h4>
                                        <i class="fa-solid fa-xmark close-icon"></i>
                                        <form action="${request.contextPath()}" class="modal-input-form">
                                            <div class="input-wrapper">
                                                <div class="lable">
                                                    <label for="foodName">Food Name</label>
                                                </div>
                                                <div class="input">
                                                    <input type="text" name="foodName" id="foodName" >
                                                </div>
                                            </div>
                                            <div class="input-wrapper">
                                                <div class="lable">
                                                    <label for="img1">Image Link 1</label>
                                                </div>
                                                <div class="input">
                                                    <input type="text" name="img1" id="img1" >
                                                </div>
                                            </div>
                                            <div class="input-wrapper">
                                                <div class="lable">
                                                    <label for="img2">Image Link 2</label>
                                                </div>
                                                <div class="input">
                                                    <input type="text" name="img2" id="img2" >
                                                </div>
                                            </div>
                                            <div class="input-wrapper">
                                                <div class="lable">
                                                    <label for="img3">Image Link 3</label>
                                                </div>
                                                <div class="input">
                                                    <input type="text" name="img3" id="img3" >
                                                </div>
                                            </div>
                                            <div class="input-wrapper">
                                                <div class="lable">
                                                    <label for="description">Food Description</label>
                                                </div>
                                                <div class="input">
                                                    <input type="text" name="description" id="description" >
                                                </div>
                                            </div>
                                            <div class="input-wrapper">
                                                <div class="lable">
                                                    <label for="category">Food Category</label>
                                                </div>
                                                <div class="input">
                                                    <input type="text" name="category" id="category" >
                                                </div>
                                            </div>
                                            <div class="input-wrapper">
                                                <div class="lable">
                                                    <label for="price">Original Price</label>
                                                </div>
                                                <div class="input">
                                                    <input type="text" name="price" id="price" >
                                                </div>
                                            </div>
                                            <div class="btn-submit">
                                                <button class="btn-action " type="submit" name="createNew" value="add">Add to menu</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <table class="table infor-detail text-center">
                            <thead>
                            <th>Food ID</th>
                            <th>Food name</th>

                            <th>Original price</th>
                            <th>Discount percent</th>
                            <th>Final price</th>
                            <th></th>
                            </thead>
                            <tbody>
                                <c:forEach var="food" items="${foodList}">
                                    <tr class="table-row row-food-detail">
                                        <td class="food-id">${food.foodID}</td>
                                        <td class="food-name">${food.foodName}</td>

                                        <td class="food-price">${food.originalPrice}</td>
                                        <td class="food-discount">${food.discountPrice}</td>
                                        <td class="food-final-price">${food.finalPrice}</td>
                                        <td class="table-btn">
                                            <i class="fa-solid fa-circle-minus remove action-icon"></i>
                                            <div class="modal-remove modalBlock"> 
                                                <div class="modal-remove-wrapper ">
                                                    <div class="modal-form-remove">
                                                        <form action="" class="confirm-delete">
                                                            <input type="hidden" name="foodCode" value="${food.foodID}" >
                                                            <span class="confirm-title" >Are you sure to delete food ${food.foodID}</span>
                                                            <div class="btn-wrapper">
                                                                <button class="confirm" type="submit" style="border-bottom-left-radius: 15px;" name="remove" value="true">Yes</button>
                                                                <button class="confirm" type="submit" style="border-bottom-right-radius: 15px;" name="remove" value="false">No</button>
                                                            </div>                                                   
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                            <i class="fa-solid fa-pen-to-square edit action-icon"></i>
                                            <div class="modal-wrapper modal-edit  modalBlock"> >
                                                <div class="modal-content-wrapper">
                                                    <div class="modal-form">
                                                        <h4 class="dashboard-title btnCrete text-center">Update foodName</h4>
                                                        <form action="" class="modal-input-form">
                                                            <input type="hidden" name="foodCode" value="${food.foodID}">
                                                            <div class="input-wrapper">
                                                                <div class="lable">
                                                                    <label for="foodName">Food Name</label>
                                                                </div>
                                                                <div class="input">
                                                                    <input type="text" name="foodName" id="foodName" value=" " >
                                                                </div>
                                                            </div>

                                                            <div class="input-wrapper">
                                                                <div class="lable">
                                                                    <label for="price">Original Price</label>
                                                                </div>
                                                                <div class="input">
                                                                    <input type="text" name="originalPrice" id="price" >
                                                                </div>
                                                            </div>
                                                            <div class="input-wrapper">
                                                                <div class="lable">
                                                                    <label for="discount">Discount Price</label>
                                                                </div>
                                                                <div class="input">
                                                                    <input type="text" name="discountPrice" id="discount" >
                                                                </div>
                                                            </div>
                                                            <div class="input-wrapper">
                                                                <div class="lable">
                                                                    <label for="finalPrice">Final Price</label>
                                                                </div>
                                                                <div class="input">
                                                                    <input type="text" name="price" id="finalPrice" disabled>
                                                                </div>
                                                            </div>
                                                            <div class="btn-submit">
                                                                <button class="btn-action " type="submit" name="updateFood" value="update">Update now</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script src="../assets/javascript/admin.js"></script>

</html>