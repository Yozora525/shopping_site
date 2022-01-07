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
    <title>in耳吉|訂單紀錄</title>
    <link rel="stylesheet" href="assets/css/all.css">
    <link rel="stylesheet" href="assets/css/member_order_record.css">
</head>

<body>
    <header class="mainHeader">
        <div class="container">
            <a href="index.jsp" class="logo">
                <img src="assets/img/headphones.png" alt="earphonelogo">
            </a>
            <nav class="navBar">
                <a href="product_overview.jsp">產品介紹</a>
                <a href="member_center.jsp">會員中心</a>
                <a href="managed_server.jsp">後台管理</a>
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
    <h1>訂單紀錄</h1>
    <div class="recordlist">
        <table border="1">
            <tr>
                <th>日期</th>
                <th>送貨地址</th>
                <th>項目</th>
                <th>數量</th>
                <th>費用</th>
            </tr>
            <%
            sql = "SELECT * FROM `record` WHERE email = '" + session.getAttribute("email").toString()  +"'";
            ResultSet rsRecord = con.createStatement().executeQuery(sql);
            int iTotal = 0;

            while(rsRecord.next()){
                out.println("<tr>");

                out.println("<td>" + rsRecord.getString("sold_date") + "</td>");
                out.println("<td>" + rsRecord.getString("address") +"</td>");
                out.println("<td>" + rsRecord.getString("product_name") +"</td>");
                out.println("<td>" + rsRecord.getString("sold_quantity") +"</td>");
                iTotal = rsRecord.getInt("price") * rsRecord.getInt("sold_quantity");
                out.println("<td>" + iTotal +"</td>");

                out.println("</tr>");
            }
                
            %>
        </table>
    </div>
</body>

</html>