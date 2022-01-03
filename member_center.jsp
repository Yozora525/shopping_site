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
        out.println("請確實登入, 點<a href='login.html'>我</a>回登入頁");
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
                <a href="member_center.jsp">會員中心</a>
                <a href="managed_server.jsp">後台管理</a>
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
                <form action="">
                    <table>
                        <%

                            while(rsUser.next()){
                                out.println("<tr>");
                                out.println("<td>姓名  :&nbsp;&nbsp;<input type='text' id=name' readonly/><input type='button' onclick='start1()' id='displaysign1' name='btt1' value='Edit'/></td>");
                                out.println("</tr>");

                                out.println("<tr>");
                                out.println("<td>Email  :&nbsp;&nbsp;<input type='email' id='email' readonly/></td>");
                                out.println("</tr>");

                                out.println("<tr>");
                                out.println("<td>密碼   :&nbsp;&nbsp;<input type='text' id='password' readonly/><input type='button' onclick='start()' id='displaysign' name='btt5' value='Edit'/></td>");
                                out.println("</tr>");
                            }
                        
                        %>
                    </table>
                </form>
            </div>
        </div>
        <div class="record">
            <div class="order">
                <a href="member_orders_record.html"><button class="recordBtn">訂單紀錄</button></a>
            </div>
            <div class="comment">
                <a href="member_comment_record.html"><button class="recordBtn">評論紀錄</button></a>
            </div>
        </div>
        <form action="assets/jsp/modify_username.jsp">
            <div class="signform1" id="signform1" style="display: none">
                <div class="signclose1">
                    <img src="assets/img/x-mark.png" width="35px" height="35px" onclick="signclose1()">
                </div>
                <div class="userdiv1">
                <p>目前名稱:&nbsp;&nbsp;&nbsp;<input id="user1" class="signinput1" type="text" placeholder="請輸入目前的名稱" name="original_username" ></p>
                </div>
                <div class="pwddiv1">
                <p>新名稱:&nbsp;&nbsp;&nbsp;<input id="pwd1" class="signinput1" type="text" placeholder="請輸入新名稱" name="new_username"></p>
                </div>
                <div class="postdiv1">
                <input type="submit" value="確認"/>
                <input type="reset" value="重填"/>
                </div>
                <br>
            </div>
        </form>

        <form action="assets/jsp/modify_pwd.jsp">
            <div class="signform" id="signform" style="display: none">
                <div class="signclose">
                    <img src="assets/img/x-mark.png" width="35px" height="35px" onclick="signclose()">
                </div>
                <div class="userdiv">
                <p>目前密碼:&nbsp;&nbsp;&nbsp;<input id="user" class="signinput" type="password" placeholder="請輸入目前的密碼" name="original_pwd" min="8" max="16"></p>
                </div>
                <div class="pwddiv">
                <p>新密碼:&nbsp;&nbsp;&nbsp;<input id="pwd" class="signinput" type="password" placeholder="請輸入新密碼" name="new_pwd" min="8" max="16"></p>
                </div>
                <div class="pwddiv">
                    <p>確認新密碼:&nbsp;&nbsp;&nbsp;<input id="newPwd" class="signinput" type="password" placeholder="請再次輸入新密碼" name="check_pwd" min="8" max="16"></p>
                </div>
                <div class="postdiv">
                <input type="submit" value="確認"/>
                <input type="reset" value="重填"/>
                </div>
                <br>
            </div>
        </form>
    </div>
    <%-- <script type="text/javascript" src="assets/js/member_center.js"></script> --%>
    <script type="text/javascript" src="assets/js/member_center1.js"></script>
    <script type="text/javascript" src="assets/js/member_center2.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <%
    }
    %>
</body>

</html>