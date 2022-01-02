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
    <link rel="stylesheet" href="assets/css/search_result.css">
</head>

<body>
<%
    String strKeyWord = request.getParameter("key_word");
    ResultSet rs;
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
            <form class="headerSearch" method="POST" action="search_result.jsp">
                <input type="search" name="key_word" placeholder="請輸入產品名稱">
                <button><img src="assets/img/magnifying-glass.png"></button>
            </form>
        </div>
    </header>

    <div class="searchResult">
        <div class="category">
            <form method="POST" action="">
                <p class="categoryTitle">分類</p>
                <div class="classification">
                    <p class="classBlock">
                        品牌:&nbsp;&nbsp;&nbsp;
                        <select name="brand" id="brand">
                            <option value="MoonDrop">水月雨</option>
                            <option value="SONY">SONY</option>
                            <option value="AKG">AKG</option>
                            <option value="ATH">鐵三角</option>
                            <option value="SAMSUNG">SAMSUNG</option>
                        </select>
                    </p>
                    <p class="classBlock">
                        價格:&nbsp;&nbsp;&nbsp;
                        <select name="brand" id="price">
                            <option value="price1">2500 以下</option>
                            <option value="price2">2500 ~ 5000</option>
                            <option value="price3">5000 ~ 7500</option>
                            <option value="price4">7500 ~ 10000</option>
                            <option value="price5">10000 以上</option>
                        </select>
                    </p>
                    <input type="submit" class="submit" value="送出" />
                </div>
            </form>
        </div>
    </div>

    <div class="resultBlock">
        <form action="">
            <table>
                <tr>
                    <td>
                        <img src="assets/img/MoonDrop_illumination1.jpg" alt="">
                    </td>
                    <td>
                        <p class="name">水月雨 光</p>
                        <p class="type">有線入耳式耳機</p>
                    </td>
                    <td class="price">售價 $26800</td>
                    <td><button>查看商品</button></td>
                </tr>
                <tr>
                    <td colspan="4">
                        <hr>
                    </td>
                </tr>
                </tr>
            </table>
        </form>
    </div>
</body>

</html>