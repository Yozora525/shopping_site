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
    if(session.getAttribute("email") == null) {
        out.println("請先登入再使用購物車功能, 點<a href='login.html'>我</a>回登入頁");
    }
    else{
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String strShoppingCarName = (String)session.getAttribute("strProductNameItroduce");
        String strShoppingCarPrice;
        String strShoppingCarQuantity = request.getParameter("quantity");
        session.removeAttribute("strProductNameItroduce");

       // out.println(strShoppingCarName);
        
        sql="SELECT * FROM `product` WHERE `product_name` = '" + strShoppingCarName + "'";
        ResultSet rs_Product=con.createStatement().executeQuery(sql);


        while(rs_Product.next()){
            session.setAttribute("strShoppingCarPrice", rs_Product.getString("price"));
            /*out.println( rs_Product.getString("price"));
            String strshoppingCartPrice =rs_Product.getString("price").toString();
            int intshoppingCarPrice =Integer.parseInt(rs_Product.getString("price"));
            session.setAttribute("strshoppingCartPrice", strshoppingCartPrice);
            out.println(strshoppingCartPrice);*/
        }

        strShoppingCarPrice = session.getAttribute("strShoppingCarPrice").toString();
        out.println(strShoppingCarPrice);

        out.println(session.getAttribute("email").toString());
        out.println(strShoppingCarQuantity);
        
        //int strshoppingCartPrice = Integer.parseInt(strPrice);

%>
<%/*
            int no=0;
            int total=0; //計算總額


        sql="INSERT `shopping_car`(`product_name`, `price`,`email`)";//     , `car_quantity`,`email`)";
        sql+="VALUES ('" + session.getAttribute("strProductNameItroduce") + "', ";
        sql+="'"+ session.getAttribute("intshoppingCarPrice") +"', "; //單價
        sql+="'"+ session.getAttribute("") +"', "; //購物車的商品數量
        sql+="'"+ session.getAttribute("email") +"')";  */

/*
        sql="SELECT * FROM `shopping_car`  WHERE `product_name` = '" + strShoppingCarName + "'";  // AND `email`="+ email +"'"; 
        ResultSet hr_allcart=con.createStatement().executeQuery(sql);  //用於下面表格
        */
    /*    out.println(session.getAttribute("strProductNameItroduce"));
        out.println(session.getAttribute("intshoppingCarPrice"));
        out.println(session.getAttribute("email")); /*
   
    /*       no =con.createStatement().executeUpdate(sql);

        if (no>0){
            out.println("新增成功");
         //   session.removeAttribute("strProductNameItroduce");
        }

        else{
            out.println(sql);
        }
    */
    
    int iSum = 0;
    int no;

    sql="INSERT `shopping_car`(`product_name`, `price`, `car_quantity`, `email`)";//     , `car_quantity`,`email`)";
        sql+="VALUES ('" + strShoppingCarName + "', ";
        sql+="'"+ Integer.parseInt(strShoppingCarPrice) +"', "; //單價
        sql+="'"+ Integer.parseInt(strShoppingCarQuantity) +"', ";
        sql+="'"+ session.getAttribute("email").toString() +"')"; 

    no =con.createStatement().executeUpdate(sql);
    
    if (no>0){
            out.println("新增成功");
            session.removeAttribute("strShoppingCarPrice");
    }

    else{
        out.println(sql);
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

            <form class="headerSearch" method="POST" action="search_resultt.jsp">
                <input type="search" name="key_word" placeholder="請輸入產品名稱">
                <button><img src="assets/img/magnifying-glass.png"></button>
            </form>

        </div>
    </header>
<%
     out.println("<div class='shoppingCart'>");
         out.println("<h2>購物車</h2>");
         out.println("<form method='POST' action=''>");
            out.println("<table border='1'>");
               out.println(" <tbody id='amsTbody'>");
                   out.println("<tr>");
                    out.println("<th>商品名稱</th>");
                    out.println("<th>價格</th>");
                    out.println("<th>數量</th>");
                    out.println("<th>刪除</th>");
                    out.println("</tr>");                                          
/*
                        while(hr_allcart.next())
                        {
                                out.println("<tr class='tdSet'>");

                                    out.println("<td class='tdSet'>"+ hr_allcart.getString("product_name") +"</td>"); //產品名
                                    out.println("<td class='tdSet'>"+ hr_allcart.getString("price") +"</td>"); //價錢

                                out.println("<td class='tdSet'>");

                                    out.println("<input type='number' value='"+hr.hr_allcart.getString("")+"' min='1' />"); //輸入買多少數量

                                out.println("</td>");
                                out.println("<td class='deleteCol tdSet'>");

                                    out.println("<button class='delete' onclick='editTable.delRow()'>");
                                    out.println("<img class='deleteImg' src='assets/img/delete.png' alt='delete'></button>");

                                out.println("</td>");
                                out.println("</tr>");
                                
                                
                            
                        }*/
%>
                         </tbody>
                <tr>
                    <%-- <td class="sum" colspan="4">總計:&nbsp;&nbsp;&nbsp; <%=total%> &nbsp;元</td> --%>
                    <td class="sum" colspan="4">總計:&nbsp;&nbsp;&nbsp;  &nbsp;元</td>
                </tr>
            </table>
        </form>
    </div>
              
                    
                    <%-- <tr class="tdSet">
                        <td class="tdSet">鐵三角 M50x</td>
                        <td class="tdSet">$ 5600</td>
                        <td class="tdSet">
                            <input type="number" value="1" min="1" />
                        </td>
                        <td class="deleteCol tdSet">
                            <button class="delete" onclick="editTable.delRow()"><img class="deleteImg" src="assets/img/delete.png" alt="delete"></button>
                        </td>
                    </tr>

                    <tr class="tdSet">
                        <td class="tdSet">SONY IER-Z1R</td>
                        <td class="tdSet">$ 55900</td>
                        <td class="tdSet">
                            <input type="number" value="1" min="1" />
                        </td>
                        <td class="deleteCol tdSet">
                            <button class="delete" onclick="editTable.delRow()"><img class="deleteImg" src="assets/img/delete.png" alt="delete"></button>
                        </td>
                    </tr>
                    <tr class="tdSet">
                        <td class="tdSet">水月雨 KATO</td>
                        <td class="tdSet">$ 6000</td>
                        <td class="tdSet">
                            <input type="number" value="1" min="1" />
                        </td>
                        <td class="deleteCol tdSet">
                            <button class="delete" onclick="editTable.delRow()"><img class="deleteImg" src="assets/img/delete.png" alt="delete"></button>
                        </td>
                    </tr> --%>
                     <!-- jsp到這邊結束-->
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
    <%
    }
    %>
</body>
</html>