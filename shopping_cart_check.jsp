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
<%
                    sql = "SELECT * FROM `shopping_car` WHERE `email` = '"+ String.valueOf(session.getAttribute("email")) + "'";
                    ResultSet rsShopping = con.createStatement().executeQuery(sql);
                    ResultSet rsAddress = con.createStatement().executeQuery(sql);
                    int iMoney=0;

                    while(rsShopping.next()){
                        out.println("<tr>");

                        out.println("<td class='tdSet'>" + rsShopping.getString("product_name") + "</td>");
                        out.println("<td class='tdSet'>$" + rsShopping.getString("price") + "</td>");

                        out.println("<td class='tdSet' align='center'>");
                            out.println("<input type='text' style='background-color:transparent; border-style:none none none none; class='quantity' value='" + rsShopping.getString("car_quantity") + "' readonly/>");
                        out.println("</td>");

                        out.println("</tr>");

                out.println("</tr>");
                out.println("</tbody>");
                out.println("<tr>");
                iMoney += rsShopping.getInt("price") * rsShopping.getInt("car_quantity");
                session.setAttribute("iMoney", iMoney);
                    
                }
                out.println("<td class='sum' colspan='4' style='text-align: right;'>總計:&nbsp;&nbsp;&nbsp;" + String.valueOf(session.getAttribute("iMoney")) + "&nbsp;元</td>");
                
                session.removeAttribute("iMoney");
                out.println("</tr>");
            out.println("</table>");
        out.println("</form>");
    out.println("</div>");
    out.println("<div class='address'>");
        
            out.println("<table>");
                out.println("<tr>");
                    out.println("<td class='addressCol'>");
                        out.println("<p class='addressTitle'>收件地址</p>");
                    out.println("</td>");
                    out.println("<td class=addressTextCol'>");
                    if(rsAddress.next()){
                        out.println("<input type='text' class='addressText' value='" + rsAddress.getString("address") + "' readonly/>");
                    }
                        
                    out.println("</td>");
                out.println("</tr>");
            out.println("</table>");
                    

            out.println("<div class='buttonBlock'>");

                out.println("<a href ='shopping_cart.jsp'>");
                out.println("<input type='button' class='btn' value='回上頁'/>");

                out.println("<a href ='assets/jsp/checkout.jsp'>");
                out.println("<input type='submit' class='btn' value='確認送出'/>");
            out.println("</div>");
    out.println("</div>");

    
%>
</body>
</html>