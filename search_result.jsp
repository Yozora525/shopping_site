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
                <button ><img src="assets/img/magnifying-glass.png"></button>
                <%-- <input type="submit" value="<img src='assets/img/magnifying-glass.png'>"> --%>
            </form>
        </div>
    </header>

    <div class="searchResult">
        <div class="category">
            <form method="POST" action="search_result.jsp">
                <p class="categoryTitle">分類</p>
                <div class="classification">
                    <p class="classBlock">
                        品牌:&nbsp;&nbsp;&nbsp;
                        <select name="brand" id="brand" >
                            <option value="水月雨">水月雨</option>
                            <option value="SONY">SONY</option>
                            <option value="AKG">AKG</option>
                            <option value="鐵三角">鐵三角</option>
                            <option value="SAMSUNG">SAMSUNG</option>
                        </select>
                    </p>
                    <p class="classBlock">
                        價格:&nbsp;&nbsp;&nbsp;
                        <select id="price" name="price">
                            <option value="price1">2500 以下</option>
                            <option value="price2">2500 ~ 5000</option>
                            <option value="price3">5000 ~ 7500</option>
                            <option value="price4">7500 ~ 10000</option>
                            <option value="price5">10000 以上</option>
                        </select>
                    </p>
                    <p class="classBlock">
                        <input type="text" class="keyword" name="keyword" placeholder="請輸入關鍵字">
                    </p>
                    <input type="submit" class="submit" value="送出" />
                </div>
            </form>
        </div>
    </div>


    <div class="resultBlock">
        
            
            <%
                request.setCharacterEncoding("UTF-8");
                response.setCharacterEncoding("UTF-8");
                String strKeyWord = request.getParameter("key_word");
                String strKeyWords = request.getParameter("keyword");
                String strBrand = request.getParameter("brand");
                String strPrice = request.getParameter("price");
                

                // out.println(strKeyWord);
                ResultSet rs;
                ResultSet rsSearch;

                sql = "SELECT * FROM `product` WHERE `product_name` LIKE '%" + strKeyWord + "%' OR `product_introduce` LIKE '%" + strKeyWord + "%' OR `brand` LIKE '" +  strBrand + "' ";
                rs = con.createStatement().executeQuery(sql);

                while(rs.next()){
                    out.println("<table>");
                    out.println("<tr>");
                    out.println("<td>");
                    out.println("<img src='" + rs.getString(4) + "' >");
                    out.println("</td>");

                    out.println("<form action='product_introduction.jsp' method='post'>");
                    out.println("<td>");
                    out.println("<p ><input class='name' type='text' name='product_name_introduce'  style='background-color:transparent; border-style:none none none none; text-align:center' value='" + rs.getString(1) + "'readonly/></p>");
                    out.println("<p class='type'>" + rs.getString(6) + rs.getString(5) + "耳機</p>");
                    out.println("</td>");

                    out.println("<td class='price'>售價 $" + rs.getString(2) + "</td>");
                    out.println("<td><button class='productDetails' type='submit'>查看商品</button></td>");
                    out.println("</form>");
                    
                    out.println("</tr>");
                    out.println("<tr>");
                    out.println("<td colspan='4'>");
                    out.println("<hr>");
                    out.println("</td>");
                    out.println("</tr>");
                    out.println("</tr>");
                    out.println("</table>");
                }
/*

                sql = "SELECT * FROM `product` WHERE `product_name` LIKE '%" + strKeyWords + "%' OR `product_introduce` LIKE '%" + strKeyWords + "%' AND `brand` LIKE '" +  strBrand + "' ";
                rsSearch = con.createStatement().executeQuery(sql);

                while(rs.next()){
                    out.println("<table>");
                    out.println("<tr>");
                    out.println("<td>");
                    out.println("<img src='" + rsSearch.getString(4) + "' >");
                    out.println("</td>");

                    out.println("<form action='product_introduction.jsp' method='post'>");
                    out.println("<td>");
                    out.println("<p ><input class='name' type='text' name='product_name_introduce'  style='background-color:transparent; border-style:none none none none; text-align:center' value='" + rsSearch.getString(1) + "'readonly/></p>");
                    out.println("<p class='type'>" + rsSearch.getString(6) + rsSearch.getString(5) + "耳機</p>");
                    out.println("</td>");

                    out.println("<td class='price'>售價 $" + rsSearch.getString(2) + "</td>");
                    out.println("<td><button class='productDetails' type='submit'>查看商品</button></td>");
                    out.println("</form>");
                    
                    out.println("</tr>");
                    out.println("<tr>");
                    out.println("<td colspan='4'>");
                    out.println("<hr>");
                    out.println("</td>");
                    out.println("</tr>");
                    out.println("</tr>");
                    out.println("</table>");
                }*/
            %>
        
    </div>
</body>

</html>