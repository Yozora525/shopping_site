<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "assets/jsp/consql.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <title>Document</title>
    <link rel="stylesheet" href="assets/css/all.css">
    <link rel="stylesheet" href="assets/css/product_introduction.css">
    <link rel="stylesheet" href="assets/css/contact_us.css">
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
    String strProductNameItroduce = request.getParameter("product_name_introduce");
    
    
%>
    <header class="mainHeader">
        <div class="container">
            <a href="index.jsp" class="logo">
                <img src="assets/img/headphones.png" alt="earphonelogo">
            </a>
            <nav class="navBar">
                <a href="product_overview.jsp">產品介紹</a>
                <a href="member_center.html">會員中心</a>
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
    <div class="productIntro">
        <div class="productImg">
            <!-- Full-width images with number text -->

            <%
            sql="SELECT * FROM `product` WHERE `product_name` = '" + strProductNameItroduce + "'";
            ResultSet rsProduct=con.createStatement().executeQuery(sql);
            ResultSet rsProduct1=con.createStatement().executeQuery(sql);
            ResultSet rsProduct2=con.createStatement().executeQuery(sql);
            out.println("<div class='mySlides'>");

            while(rsProduct1.next()) {
                out.println("<img src='" + rsProduct1.getString(4) + "' style='width:100%'>");
            }
            
            out.println("</div>");

            %>
            <%-- <div class="mySlides">
                <img src="assets/img/MoonDrop_illumination2.jpg" style="width:100%">
            </div>

            <div class="mySlides">
                <img src="assets/img/MoonDrop_illumination3.jpg" style="width:100%">
            </div> --%>

            <!-- Next and previous buttons -->
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
            

            <!-- Thumbnail images -->
            <div class="row">
                <div class="column">
                <img class="demo cursor" src="assets/img/MoonDrop_illumination1.jpg" style="width:100%" onclick="currentSlide(1)">
                </div>
                <div class="column">
                <img class="demo cursor" src="assets/img/MoonDrop_illumination2.jpg" style="width:100%" onclick="currentSlide(2)">
                </div>
                <div class="column1">
                <img class="demo cursor" src="assets/img/MoonDrop_illumination3.jpg" style="width:100%" onclick="currentSlide(3)">
                </div>
            </div>
        </div>
        <div class="productDescription">
            <div class="productContent">
                <%-- <p class="name">水月雨 光</p> --%>
                <%
                    out.println("<p class='name'>" + strProductNameItroduce + "</p>");
                %>
                <div class="stars">
                    <input type="radio" id="five" name="rate" value="5">
                    <label for="five"></label>
                    <input type="radio" id="four" name="rate" value="4">
                    <label for="four"></label>
                    <input type="radio" id="three" name="rate" value="3">
                    <label for="three"></label>
                    <input type="radio" id="two" name="rate" value="2">
                    <label for="two"></label>
                    <input type="radio" id="one" name="rate" value="1">
                    <label for="one"></label>
                </div>
                <ul>
                    <li>參考級旗艦，動圈入耳式耳機</li>
                    <li>LCP液晶高分子聚合物球頂，PEEK高阻尼懸邊</li>
                    <li>標配可更換插頭單晶銅內芯，銅鍍銀屏蔽同軸線材</li>
                </ul>
                <%
                    while(rsProduct2.next()){
                        out.println("<p class='priceShow'>售價   <b class='price'>$" + rsProduct2.getString(2) + "</b></p>");
                    }
                    
                %>
                <input class="number" type="number" min="1" value="1"/>
                <%
                    sql="SELECT * FROM `inventory` WHERE `product_name` = '" + strProductNameItroduce + "'";
                    ResultSet rsInventoryQuantity=con.createStatement().executeQuery(sql);

                    while(rsInventoryQuantity.next()){
                        out.println("<p class='amount'>尚餘" + rsInventoryQuantity.getString(2) + "組</p>");
                    }
                %>
                <div class="buttonBlock">
                 <%
                   out.println(" <a href='shopping_cart.jsp?strProductNameItroduce=" + strProductNameItroduce + "'><button class='addToCart'><img src='assets/img/shopping_cart.png'>&nbsp;&nbsp;加入購物車</button></a>");
                %> 
                   
                   <%--
                    <%
                        sql=INSERT 
                    
                    %> 
                    --%>
                    <a href="#"><button class="checkout">直接結帳</button></a>
                </div>
            </div>
        </div>
        <div class="productFeature">
            <h2>激起您的運動興致</h2>
            <p>具備持久的電池續航力、IPX5 1 防水設計及全天候配戴也舒適的特點，WI-SP510 入耳式運動耳機是您絕佳的訓練夥伴。</p>
            <h2>專為積極活躍的生活方式設計</h2>
            <p>不論是運動或傾盆大雨，WI-SP510 具備 IPX5 1 防水等級，使耳機不受水花潑灑或汗水影響，即使在汗水淋漓的訓練課程後沖洗耳機也沒問題。</p>
            <h2>搭載 EXTRA BASSTM，將性能發揮到極致</h2>
            <p>增強音樂節奏感，提升健身表現。EXTRA BASS 呈現強勁有力的低頻聲音，為您帶來滿滿活力，不斷向前邁進。</p>
            <h2>全天候配戴也舒適且便於攜帶</h2>
            <p>頸帶設計輕巧柔軟有彈性，專為全天穿戴舒適度打造。耳塞式耳機內建防纏結磁鐵，收納攜帶更俐落。</p>
        </div>
    </div>
    <h2 class="commentTitle">留言評價</h2>
    <div class="comment">
        <table>
            <tr>
                <td>
                    <div class="commentPerson">
                        <img src="assets/img/profile1.png">
                        <p><b>王小明</b></p>
                        <div class="stars1">
                            <input type="radio" id="five1" name="rate" value="5">
                            <label for="five"></label>
                            <input type="radio" id="four1" name="rate" value="4">
                            <label for="four"></label>
                            <input type="radio" id="three1" name="rate" value="3">
                            <label for="three"></label>
                            <input type="radio" id="two1" name="rate" value="2">
                            <label for="two"></label>
                            <input type="radio" id="one1" name="rate" value="1">
                            <label for="one"></label>
                        </div>
                    </div>
                    <div class="commentText">
                        <p>隔音效果做得特別好!!</p>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="commentPerson">
                        <img src="assets/img/profile2.png">
                        <p><b>陳小中</b></p>
                        <div class="stars1">
                            <input type="radio" id="five2" name="rate" value="5">
                            <label for="five"></label>
                            <input type="radio" id="four2" name="rate" value="4">
                            <label for="four"></label>
                            <input type="radio" id="three2" name="rate" value="3">
                            <label for="three"></label>
                            <input type="radio" id="two2" name="rate" value="2">
                            <label for="two"></label>
                            <input type="radio" id="one2" name="rate" value="1">
                            <label for="one"></label>
                        </div>
                    </div>
                    <div class="commentText">
                        <p>音質細節部分表現的超級好!!</p>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="commentPerson">
                        <img src="assets/img/profile3.png">
                        <p><b>黃小雅</b></p>
                        <div class="stars1">
                            <input type="radio" id="five3" name="rate" value="5">
                            <label for="five"></label>
                            <input type="radio" id="four3" name="rate" value="4">
                            <label for="four"></label>
                            <input type="radio" id="three3" name="rate" value="3">
                            <label for="three"></label>
                            <input type="radio" id="two3" name="rate" value="2">
                            <label for="two"></label>
                            <input type="radio" id="one3" name="rate" value="1">
                            <label for="one"></label>
                        </div>
                    </div>
                    <div class="commentText">
                        <p>沒有因為是無線耳機而帶來很重的延遲感!!</p>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    
    <script type="text/javascript" src="assets/js/product_introduction.js"></script>

    <div id="myNav" class="overlay">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <div class="overlay-content">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3617.2668942752266!2d121.24136351423672!3d24.957032547528176!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x346822143c046009%3A0x63e3ef21e3beebac!2z5Lit5Y6f5aSn5a246LOH6KiK566h55CG5a2457O7!5e0!3m2!1szh-TW!2stw!4v1640762486119!5m2!1szh-TW!2stw" allowfullscreen="" loading="lazy"></iframe>
            <h3>
                隸屬學系：中原大學資訊管理學系<br>
                聯絡地址：320314 桃園市中壢區中北路200號 <br>
                電話：886-3-265-5401<br>
            <hr class="contacthr">
            <form method="post" action=" ">
                <input class="contact" type="text" name="contact_name" placeholder="姓名"><br>
                <input class="contact" type="email" name="contact_email" placeholder="Email"><br>
            <textarea name="contact" cols="52" rows="10" wrap="hard" placeholder="歡迎留下任何鼓勵或意見回饋，謝謝您！"></textarea><br>
            <input class="contactbutton" type="submit" value="確認送出" />
            </form>
            </h3>
        </div>
      </div>
      
      <script type="text/javascript" src="assets/js/contact_us.js"></script>  
</body>
</html>