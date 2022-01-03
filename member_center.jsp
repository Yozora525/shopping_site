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
    <link rel="stylesheet" href="assets/css/member_center.css">
</head>

<body>
<%
    if(session.getAttribute("email") == null) {
        out.println("請確實登入, 點<a href='index.jsp'>我</a>回首頁");
    }

    else{
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
    <div class="memberCenter">
        <div class="memberInfo">
            <div class="memberLeft">
                <div class="memberInfoImg">
                    <img src="assets/img/memberImg.png">
                </div>
                <div class="memberInfoContent">
                <%
                    sql = "SELECT * FROM `user` WHERE `email` = '" + session.getAttribute("email") + "'";
                    ResultSet rs = con.createStatement().executeQuery(sql);
                    ResultSet rsUser = con.createStatement().executeQuery(sql);
                    
                    while (rs.next()) {
                        out.println("<p>" + rs.getString(2) + "，您好!</p>");
                    }
                %>
                    
                </div>
                <div class="hr">
                    <hr>
                </div>
                <div class="logout">
                    <p><a href="assets/jsp/logout.jsp" class="logoutButton">登出</a></p>
                </div>
            </div>
            <div class="memberRight">
                <form action="assets/jsp/modify.jsp">
                    <table>
                        <%

                            while(rsUser.next()){
                                out.println("<tr>");
                                out.println("<td>姓名 :&nbsp;&nbsp;<input type='text' id='name' value='" + rsUser.getString(2) + "' readonly/><input type='text' id='nameModify' style='display:none;' /><input type='button' onclick='edit1();' id='btt1' name='btt1' value='Edit' /></td>");
                                out.println("</tr>");

                                out.println("<tr>");
                                out.println("<td>Email :&nbsp;&nbsp;<input type='email' id='email' value='" + rsUser.getString(1) + "' readonly/><input type='email' id='emailModify' style='display:none;' /></td>");
                                out.println("</tr>");

                                out.println("<tr>");
                                out.println("<td>密碼 :&nbsp;&nbsp;<input type='text' id='password' readonly/><input type='text' id='passwordModify' style='display:none;' /><input type='button' onclick='edit5();' id='btt5' name='btt5' value='Edit' /></td>");
                                out.println("</tr>");
                            }
                        
                        %>
                    </table>
                </form>
            </div>
        </div>
        <div class="record">
            <div class="order">
                <a href="member_order_record.html"><button class="recordBtn">訂單紀錄</button></a>
            </div>
            <div class="comment">
                <a href="member_comment_record.html"><button class="recordBtn">評論紀錄</button></a>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="assets/js/member_center.js"></script>
    <%
    // out.println("fail");
    response.sendRedirect("login.html");
    }
    %>
</body>

</html>