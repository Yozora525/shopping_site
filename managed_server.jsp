<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<%@page import = "java.util.*" %>
<%@include file = "assets/jsp/consql.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>in耳吉 | 後台管理</title>
    <link rel="stylesheet" href="assets/css/all.css">
    <link rel="stylesheet" href="assets/css/managed_server.css">
</head>

<body>
<%
    if(session.getAttribute("server_email") == null) {
        out.println("請確實登入, 點<a href='index.jsp'>我</a>回首頁");
    }

    else{
        %>
    
    <header class="mainHeader">
        <div class="container">

            <a href="index.html" class="logo">
                <img src="assets/img/headphones.png" alt="earphonelogo">
            </a>

            <nav class="navBar">
                <a href="product_overview.html">產品介紹</a>
                <a href="login.html">後台管理</a>
            </nav>

            <a class="cart" href="#"><img src="assets/img/shopping-cart.png"></a>

            <form class="headerSearch" method="POST" action="assets/jsp/search.jsp">
                <input type="search" name="key_word" placeholder="請輸入產品名稱">
                <button><img src="assets/img/magnifying-glass.png"></button>
            </form>

        </div>
    </header>

    <div class="managedServer">
        <div class="memberInfo">
            <div class="memberInfoImg">
                <img src="assets/img/memberImg.png">
            </div>
            <div class="memberInfoContent">
                <p><b>XXX，您好!</b></p>
            </div>
            <div class="hr">
                <hr>
            </div>
            <div class="logout">
                <p><a href="index.html" class="logoutButton">登出</a></p>
            </div>
        </div>
        <div class="inventory">
            <button class="accordion">商品存貨</button>
            <div class="panel">
                <table border="1">
                    <tbody id="amsTbody">
                        <tr>
                            <th>商品名稱</th>
                            <th>售價</th>
                            <th>數量</th>
                            <th>上架狀態</th>
                            <th>更新確認</th>
                        </tr>

                        <%
                            sql = "SELECT `product_name`, `price`, `status` FROM `product`";
                            ResultSet rsProductInfo = con.createStatement().executeQuery(sql);
                            
                            while (rsProductInfo.next()){
                                out.println("<tr class='tdSet'>");
                                out.println("<td class='tdSet'>" + rsProductInfo.getString(1) + "</td>");
                                out.println("<td class='tdSet'> $" + rsProductInfo.getString(2) + "</td>");

                                out.println("<td class='tdSet'>");

                                out.println("<form action='assets/jsp/inventory_managed.jsp' method='post'>");
                                out.println("<input type='radio' name='status' value='" + rsProductInfo.getString(1) + "' checked/>上架");
                                out.println("<input type='radio' name='status' value='" + rsProductInfo.getString(1) + "'>下架");
                                out.println("<td><input type='submit' value='提交'></td>");
                                out.println("</form>");
                                
                                out.println("</td>");
                                out.println("</tr>");
                            }
                        %>
                            <%-- <td class="tdSet"> 15個</td>(這還沒弄) --%>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <button class="accordion">訂單紀錄</button>
    <div class="panel">
        <table border="1">
            <tr>
                <th>姓名</th>
                <th>email</th>
                <th>地址</th>
                <th>商品名稱</th>
                <th>金額</th>
                <th>數量</th>
            </tr>
            <tr>
                <td>王小明</td>
                <td>asd123456789@gmail.com</td>
                <td>桃園市龍潭區</td>
                <td>水月雨 光</td>
                <td>$ 26800</td>
                <td>1個</td>
            </tr>
            <tr>
                <td>陳小中</td>
                <td>zxc987654321@gmail.com</td>
                <td>新北市板橋區</td>
                <td>鐵三角 ATH-M50xBT2</td>
                <td>$ 7600</td>
                <td>1個</td>
            </tr>
            <tr>
                <td>黃小雅</td>
                <td>qwe135792468@gmail.com</td>
                <td>新竹縣竹北市</td>
                <td>水月雨 KATO</td>
                <td>$ 5680</td>
                <td>1個</td>
            </tr>
        </table>
    </div>

    <button class="accordion">存貨管理</button>
    <div class="panel">
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

    <script type="text/javascript" src="assets/js/managed_server.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <%
    }
    %>
</body>

</html>