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

            <a href="index.jsp" class="logo">
                <img src="assets/img/headphones.png" alt="earphonelogo">
            </a>

            <nav class="navBar">
                <a href="product_overview.jsp">產品介紹</a>
                <a href="managed_server_login.html">後台管理</a>
            </nav>

            <a class="cart" href="shopping_cart.jsp"><img src="assets/img/shopping-cart.png"></a>

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
            <%
                sql = "SELECT `server_name` FROM `server`";
                ResultSet rsServer = con.createStatement().executeQuery(sql);

                while(rsServer.next()){
                out.println("<p><b>" + rsServer.getString(1) + "，您好!</b></p>");
                }
            %>
            </div>
            <div class="hr">
                <hr>
            </div>
            <div class="logout">
                <p><a href="index.html" class="logoutButton">登出</a></p>
            </div>
        </div>
        <div class="inventory">
            <button class="accordion">商品狀態</button>
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
                            sql = "SELECT `transaction_date`, `product_name`, `sold_quantity`, `import_quantity`, `inventory_quantity` FROM `inventory`";
                            ResultSet rsInventory = con.createStatement().executeQuery(sql);
                            ResultSet rsInventory1 = con.createStatement().executeQuery(sql);
                            

                            while (rsProductInfo.next() && rsInventory1.next()) {
                                out.println("<tr class='tdSet'>");
                                out.println("<td class='tdSet'>" + rsProductInfo.getString(1) + "</td>");
                                out.println("<td class='tdSet'> $" + rsProductInfo.getString(2) + "</td>");
                                out.println("<td class='tdSet'>" + rsInventory1.getString(5) + "個</td>");

                                out.println("<td class='tdSet'>");

                                out.println("<form action='assets/jsp/inventory_managed.jsp' method='post'>");
                                if(rsProductInfo.getString(3).equals("1")){
                                    out.println("<input type='radio' name='status' value='" + rsProductInfo.getString(1) + "' checked/>上架");
                                    out.println("<input type='radio' name='status' value='" + rsProductInfo.getString(1) + "'>下架");
                                }

                                else if(rsProductInfo.getString(3).equals("0")){
                                    out.println("<input type='radio' name='status' value='" + rsProductInfo.getString(1) + "'>上架");
                                    out.println("<input type='radio' name='status' value='" + rsProductInfo.getString(1) + "' checked/>下架");
                                }
                                
                                out.println("<td><input type='submit' value='更新'></td>");
                                out.println("</form>");
                                
                                out.println("</td>");
                                out.println("</tr>");
                            }
                        %>
                        
                    </tbody>
                </table>
                <h2>進貨紀錄</h2>
                    <form action="#" method="POST">
                        <table border="1">
                            <tr>
                                <th>日期</th>
                                <th>商品名稱</th>
                                <th>數量</th>
                                <th>確認更新</th>
                            </tr>
                            <tr>
                            <td>2021/12/28</td>
                            <td>
                                <select size="1" name="Earphones">
                                <option>SONY WI-SP500</option>
                                <option>水月雨 KATO</option>
                                </select>
                            </td>
                            <td>
                                <input type="number" name="addednumbers" value="0" min="1"/>
                                <input type="text" name="addednumbers"> 
                                /*我覺得這裡用number比較好，但是看你們後台方便，屆時記得二選一刪除*/
                            </td>
                            <td><input type="button" name="inventoryadd" value="送出"></td>
                            </tr>
                        </table>
                    </form>
            </div>
        </div>
    </div>

    <button class="accordion">購買紀錄</button>
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
            
            <%
                sql = "SELECT `username`, `email`, `address`, `product_name`, `price`, `sold_quantity` FROM `record`";
                ResultSet rsRecord = con.createStatement().executeQuery(sql);

                while(rsRecord.next()) {
                out.println("<tr>");
                out.println("<td>" + rsRecord.getString(1) + "</td>");
                out.println("<td>" + rsRecord.getString(2) + "</td>");
                out.println("<td>" + rsRecord.getString(3) + "</td>");
                out.println("<td>" + rsRecord.getString(4) + "</td>");
                out.println("<td>" + rsRecord.getString(5) + "</td>");
                out.println("<td>" + rsRecord.getString(6) + "</td>");
                out.println("</tr>");
                }
            %>
        
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

            <%
                while(rsInventory.next()) {
                out.println("<tr>");

                out.println("<td>" + rsInventory.getString(1) + "</td>");
                out.println("<td>" + rsInventory.getString(2) + "</td>");
                out.println("<td>" + rsInventory.getString(3) + "</td>");
                out.println("<td>" + rsInventory.getString(4) + "</td>");
                out.println("<td>" + rsInventory.getString(5) + "</td>");

                out.println("</tr>");
                }
            %>
            
        </table>
    </div>

    <script type="text/javascript" src="assets/js/managed_server.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <%
    }
    %>
</body>

</html>