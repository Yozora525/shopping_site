<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "assets/jsp/consql.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/css/all.css">
    <link rel="stylesheet" href="assets/css/shopping_cart.css">
</head>
<body>
<%
    if(session.getAttribute("user_email") == null) {
        out.println("請確實登入, 點<a href='index.jsp'>我</a>回首頁");
    }
        %>

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
            <form class="headerSearch" method="POST" action="assets/jsp/search.jsp">
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
                        <th>刪除</th>
                    </tr>
                    <tr class="tdSet">
                        <td class="tdSet">鐵三角 M50x</td>
                        <td class="tdSet">$ 5600</td>
                        <td class="tdSet">
                            <select name="quantity" id="number1">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                                <option value="13">13</option>
                                <option value="14">14</option>
                                <option value="15">15</option>
                            </select>
                        </td>
                        <td class="deleteCol tdSet">
                            <button class="delete" onclick="editTable.delRow()"><img class="deleteImg" src="assets/img/delete.png" alt="delete"></button>
                        </td>
                    </tr>
                    <tr class="tdSet">
                        <td class="tdSet">SONY IER-Z1R</td>
                        <td class="tdSet">$ 55900</td>
                        <td class="tdSet">
                            <select name="quantity" id="number2">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                                <option value="13">13</option>
                                <option value="14">14</option>
                                <option value="15">15</option>
                            </select>
                        </td>
                        <td class="deleteCol tdSet">
                            <button class="delete" onclick="editTable.delRow()"><img class="deleteImg" src="assets/img/delete.png" alt="delete"></button>
                        </td>
                    </tr>
                    <tr class="tdSet">
                        <td class="tdSet">水月雨 KATO</td>
                        <td class="tdSet">$ 6000</td>
                        <td class="tdSet">
                            <select name="quantity" id="number3">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                                <option value="13">13</option>
                                <option value="14">14</option>
                                <option value="15">15</option>
                            </select>
                        </td>
                        <td class="deleteCol tdSet">
                            <button class="delete" onclick="editTable.delRow()"><img class="deleteImg" src="assets/img/delete.png" alt="delete"></button>
                        </td>
                    </tr>
                </tbody>
                <tr>
                    <td class="sum" colspan="4">總計:&nbsp;&nbsp;&nbsp;76500&nbsp;元</td>
                </tr>
            </table>
        </form>
    </div>
    <div class="address">
        <form action="">
            <table>
                <tr>
                    <td rowspan="2" class="addressCol">收件地址</td>
                    <td class="postalCodeCol"><input class="postalCode" type="text" name="postalCode" placeholder="請輸入郵遞區號"/></td>
                    <td class="cityCol">
                        <select name="city" id="city">
                            <option value="臺北市">臺北市</option>
                            <option value="新北市">新北市</option>
                            <option value="桃園市">桃園市</option>
                            <option value="臺中市">臺中市</option>
                            <option value="臺南市">臺南市</option>
                            <option value="高雄市">高雄市</option>
                            <option value="新竹縣">新竹縣</option>
                            <option value="苗栗縣">苗栗縣</option>
                            <option value="彰化縣">彰化縣</option>
                            <option value="南投縣">南投縣</option>
                            <option value="雲林縣">雲林縣</option>
                            <option value="嘉義縣">嘉義縣</option>
                            <option value="屏東縣">屏東縣</option>
                            <option value="宜蘭縣">宜蘭縣</option>
                            <option value="花蓮縣">花蓮縣</option>
                            <option value="臺東縣">臺東縣</option>
                            <option value="澎湖縣">澎湖縣</option>
                            <option value="金門縣">金門縣</option>
                            <option value="連江縣">連江縣</option>
                            <option value="基隆市">基隆市</option>
                            <option value="新竹市">新竹市</option>
                            <option value="嘉義市">嘉義市</option>
                        </select>
                    </td>
                    <td class="checkoutCol" rowspan="2"><input class="checkout" type="submit" value="結帳  ▶"/></td>
                </tr>
                <tr>
                    <td colspan="2" class="detailedAddressCol"><input class="detailedAddress" type="text" name="detailedAddress" placeholder="請輸入詳細地址"></td>
                </tr>
            </table>
        </form>
    </div>
    <script type="text/javascript" src="assets/js/shopping_cart.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</body>
</html>