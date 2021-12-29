<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "consql.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>in耳吉|存貨管理</title>
    <link rel="stylesheet" href="assets/css/all.css">
    <link rel="stylesheet" href="assets/css/managed_server_inventory.css">
</head>
<body>
    <header class="mainHeader">
        <div class="container">
            <a href="index.html" class="logo">
                <img src="assets/img/headphones.png" alt="earphonelogo">
            </a>
            <nav class="navBar">
                <a href="product_overview.html">產品介紹</a>
                <a href="login.html">後台管理</a>
                <a href="#">訂單紀錄</a>
                <a href="#">存貨管理</a>
            </nav>
            <a class="cart" href="#"><img src="assets/img/shopping-cart.png"></a>
            <form class="headerSearch" method="POST" action="assets/jsp/search.jsp">
                <input type="search" name="key_word" placeholder="請輸入產品名稱">
                <button><img src="assets/img/magnifying-glass.png"></button>
            </form>
        </div>
    </header>
    <h1>存貨管理</h1>
        <div class="recordlist" >
                <table border="1">
                    <tr>
                        <th>日期</th>
                        <th>品名</th>
                        <th>售出數</th>
                        <th>進貨數</th>
                        <th>目前庫存</th>
                    </tr>
                    <tr>
                        <td>2021/12/29</td>
                        <td>SONY WI-SP500</td>
                        <td>0</td>
                        <td>1</td>
                        <td>15</td>
                    </tr>
                    <tr>
                        <td>2021/12/28</td>
                        <td>SONY WI-SP500</td>
                        <td>1</td>
                        <td>0</td>
                        <td>14</td>
                    </tr>
                    
                </table>
            </div>
</body>
</html>