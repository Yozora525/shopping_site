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
    <title>in耳吉|評論紀錄</title>
    <link rel="stylesheet" href="assets/css/all.css">
    <link rel="stylesheet" href="assets/css/member_comment_record.css">
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
    <h1>評論紀錄</h1>
    <div class="recordlist">
        <table border="1">
            <tr>
                <th>日期</th>
                <th>商品</th>
                <th>星等</th>
                <th>評論</th>
            </tr>
<%
    sql="SELECT * FROM `evaluation` WHERE `email` = '" + session.getAttribute("email").toString() + "' ORDER BY `comment_date` DESC";
    ResultSet rsCommentRecord = con.createStatement().executeQuery(sql);

    while (rsCommentRecord.next()) {
        out.println("<tr>");

        out.println("<td>" + rsCommentRecord.getString("comment_date") + "</td>");
        
        out.println("<td>" + rsCommentRecord.getString("product_name") + "</td>");
        
        out.println("<td class='starsCol'>");
        
        out.println("<div class='stars'>");
        out.println("<input type='radio' id='five1' name='rate' value='5'>");
        out.println("<label for='five'></label>");

        out.println("<input type='radio' id='four1' name='rate' value='4'>");
        out.println("<label for='four'></label>");

        out.println("<input type='radio' id='three1' name='rate' value='3'>");
        out.println("<label for='three'></label>");

        out.println("<input type='radio' id='two1' name='rate' value='2'>");
        out.println("<label for='two'></label>");

        out.println("<input type='radio' id='one1' name='rate' value='1'>");
        out.println("<label for='one'></label>");
        out.println("</div>");

        out.println("</td>");
        
        out.println("<td class='commentCol'>" + rsCommentRecord.getString("comment") + "</td>");
        
        out.println("</tr>");
    }
%>
        </table>
    </div>
</body>

</html>