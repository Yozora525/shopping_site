<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "assets/jsp/consql.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/css/all.css">
    <link rel="stylesheet" href="assets/css/shopping_cart_check.css">
</head>
<body>
    <header class="mainHeader">
        <div class="container">
            <a href="index.jsp" class="logo">
                <img src="assets/img/headphones.png" alt="earphonelogo">
            </a>
            <nav class="navBar">
                <a href="product_overview.jsp">產品介紹</a>
                <a href="login.html">會員中心</a>
                <a href="managed_server_login.html">後台管理</a>
                <a href="about_us.html">關於我們</a>
                <a href="#" onclick="openNav()">聯絡我們</a>
            </nav>
            <a class="cart" href="shopping_cart.jsp"><img src="assets/img/shopping-cart.png"></a>
            <form class="headerSearch" method="POST" action="search_resultt.jsp">
                <input type="search" name="key_word" placeholder="請輸入產品名稱">
                <button><img src="assets/img/magnifying-glass.png"></button>
            </form>
        </div>
    </header>
    <div class="shoppingCart">
        <h2>購物車</h2>
        <form method="POST" action="">
            <table border="1">
                <tbody id="amsTbody">
                    <tr>
                        <th>商品名稱</th>
                        <th>價格</th>
                        <th>數量</th>
                    </tr>
                    <tr class="tdSet1">
                        <td class="tdSet">鐵三角 M50x</td>
                        <td class="tdSet">$ 5600</td>
                        <td class="tdSet">
                            <input type="text" class="quantity" value="1" readonly/>
                        </td>
                    </tr>

                </tbody>
                <tr>
                    <td class="sum" colspan="4" style="text-align: right;">總計:&nbsp;&nbsp;&nbsp;76500&nbsp;元</td>
                </tr>
            </table>
        </form>
    </div>
    <div class="address">
        <form action="">
            <table>
                <tr>
                    <td class="addressCol">
                        <p class="addressTitle">收件地址</p>
                    </td>
                    <td class="addressTextCol">
                        <input type="text" class="addressText" value="123 桃園市中壢區" readonly/>
                    </td>
                </tr>
            </table>
            <div class="buttonBlock">

                <a href ='shopping_cart.jsp'>
                <input type="button" class="btn" value="回上頁"/>

                <a href ='assets/jsp/checkout.jsp'>
                <input type="submit" class="btn" value="確認送出"/>
            </div>
        </form>
    </div>
</body>
</html>