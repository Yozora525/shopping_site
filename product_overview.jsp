<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "assets/jsp/consql.jsp" %>
<head>
    <!DOCTYPE html>
    <html lang="en">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/css/all.css">
    <link rel="stylesheet" href="assets/css/product_overview.css">
    <link rel="stylesheet" href="assets/css/contact_us.css">
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
            <form class="headerSearch" method="POST" action="search_result.jsp">
                <input type="search" name="key_word" placeholder="請輸入產品名稱">
                <button><img src="assets/img/magnifying-glass.png"></button>
            </form>
        </div>
    </header>             
    <div class="productOverview">
        <button class="tablink" onclick="openPage('inEar', this, '#c4c3c37a')"  id="defaultOpen">入耳式</button>
        <button class="tablink" onclick="openPage('overEar', this, '#c4c3c37a')">耳罩式</button>
        <button class="tablink" onclick="openPage('wireless', this, '#c4c3c37a')">無線藍芽</button>
        <button class="tablink" onclick="openPage('sport', this, '#c4c3c37a')">運動功能</button>
        <button class="tablink" onclick="openPage('noiseReduct', this, '#c4c3c37a')">降噪功能</button>
        <button class="tablink" onclick="openPage('microphone', this, '#c4c3c37a')">麥克風功能</button>

    <%

            sql="SELECT `product_name`, `price`, `product_image`, `wear`,`link` ,`way` FROM `product` WHERE `wear`='入耳式' AND `status` ='1' ";
            ResultSet hr=con.createStatement().executeQuery(sql); 
	
            out.println("<div id='inEar' class='tabcontent'>");
            /*
            while(hr.next()){			
                out.println("<div class='commodity'>");
                out.println("<img src="+hr.getString(3)+" ><br>");
                out.println("<b><p>"+hr.getString(1)+"</b><br></p>");
                out.println("<p>"+hr.getString(5)+hr.getString(4)+hr.getString(6)+"耳機<br></p>");
                out.println("<p>售價<b>&nbsp;&nbsp;&nbsp;$"+hr.getString(2)+"<br></p></b>");
                out.println("<a href='product_introduction.html'><button class='productDetails'><b>查看商品</b></button></a></div>");
            }*/

            // shiyan
            while(hr.next()){			
                out.println("<div class='commodity'>");
                out.println("<img src="+hr.getString(3)+" ><br>");

                out.println("<form action='product_introduction.jsp' method='post' target='_blank'>");

                out.println("<b><p> <input type='' name='product_name_introduce' value='"+hr.getString(1)+"'></b><br></p>");
                out.println("<p>"+hr.getString(5)+hr.getString(4)+hr.getString(6)+"耳機<br></p>");
                out.println("<p>售價<b>&nbsp;&nbsp;&nbsp;$"+hr.getString(2)+"<br></p></b>");
                out.println("<button class='productDetails' type='submit'><b>查看商品</b></button>");

                out.println("</form>");
                out.println("</div>");
            }

            out.println("</div>");

            
            sql="SELECT `product_name`, `price`, `product_image`, `wear`,`link` ,`way` FROM `product` WHERE `wear`='耳罩式'  AND `status` ='1' ";
            ResultSet hr_overEar=con.createStatement().executeQuery(sql); 
            out.println("<div id='overEar' class='tabcontent'>");
            
            while(hr_overEar.next()){			
                out.println("<div class='commodity'>");
                out.println("<img src="+hr_overEar.getString(3)+" ><br>");
                out.println("<b><p>"+hr_overEar.getString(1)+"</b><br></p>");
                out.println("<p>"+hr_overEar.getString(5)+hr_overEar.getString(4)+hr_overEar.getString(6)+"耳機<br></p>");
                out.println("<p>售價<b>&nbsp;&nbsp;&nbsp;$"+hr_overEar.getString(2)+"<br></p></b>");
                out.println("<a href='product_introduction.html''><button class='productDetails'><b>查看商品</b></button></a></div>");
            }

            out.println("</div>");


            sql="SELECT `product_name`, `price`, `product_image`, `wear`,`link` ,`way` FROM `product` WHERE `link`='無線'  AND `status` ='1' ";
            ResultSet hr_wireless=con.createStatement().executeQuery(sql); 
            out.println("<div id='wireless' class='tabcontent'>");
            
            while(hr_wireless.next()){			
                out.println("<div class='commodity'>");
                out.println("<img src="+hr_wireless.getString(3)+" ><br>");
                out.println("<b><p>"+hr_wireless.getString(1)+"</b><br></p>");
                out.println("<p>"+hr_wireless.getString(5)+hr_wireless.getString(4)+hr_wireless.getString(6)+"耳機<br></p>");
                out.println("<p>售價<b>&nbsp;&nbsp;&nbsp;$"+hr_wireless.getString(2)+"<br></p></b>");
                out.println("<a href='product_introduction.html''><button class='productDetails'><b>查看商品</b></button></a></div>");
            }

            out.println("</div>");


            sql="SELECT `product_name`, `price`, `product_image`, `wear`,`link` ,`way` FROM `product` WHERE `way` LIKE '運%'  AND `status` ='1' ";
            ResultSet hr_sport=con.createStatement().executeQuery(sql); 
            out.println("<div id='sport' class='tabcontent'>");
            
            while(hr_sport.next()){			
                out.println("<div class='commodity'>");
                out.println("<img src="+hr_sport.getString(3)+" ><br>");
                out.println("<b><p>"+hr_sport.getString(1)+"</b><br></p>");
                out.println("<p>"+hr_sport.getString(5)+hr_sport.getString(4)+hr_sport.getString(6)+"耳機<br></p>");
                out.println("<p>售價<b>&nbsp;&nbsp;&nbsp;$"+hr_sport.getString(2)+"<br></p></b>");
                out.println("<a href='product_introduction.html''><button class='productDetails'><b>查看商品</b></button></a></div>");
            }

            out.println("</div>");


            sql="SELECT `product_name`, `price`, `product_image`, `wear`,`link` ,`way` FROM `product` WHERE `way`='降噪'  AND `status` ='1' ";
            ResultSet hr_noiseReduct=con.createStatement().executeQuery(sql); 
            out.println("<div id='noiseReduct' class='tabcontent'>");
            
            while(hr_noiseReduct.next()){			
                out.println("<div class='commodity'>");
                out.println("<img src="+hr_noiseReduct.getString(3)+" ><br>");
                out.println("<b><p>"+hr_noiseReduct.getString(1)+"</b><br></p>");
                out.println("<p>"+hr_noiseReduct.getString(5)+hr_noiseReduct.getString(4)+hr_noiseReduct.getString(6)+"耳機<br></p>");
                out.println("<p>售價<b>&nbsp;&nbsp;&nbsp;$"+hr_noiseReduct.getString(2)+"<br></p></b>");
                out.println("<a href='product_introduction.html''><button class='productDetails'><b>查看商品</b></button></a></div>");
            }

            out.println("</div>");

            sql="SELECT `product_name`, `price`, `product_image`, `wear`,`link` ,`way` FROM `product` WHERE `mic`='有'  AND `status` ='1' ";
            ResultSet hr_microphone=con.createStatement().executeQuery(sql); 
            out.println("<div id='microphone' class='tabcontent'>");
            
            while(hr_microphone.next()){			
                out.println("<div class='commodity'>");
                out.println("<img src="+hr_microphone.getString(3)+" ><br>");
                out.println("<b><p>"+hr_microphone.getString(1)+"</b><br></p>");
                out.println("<p>"+hr_microphone.getString(5)+hr_microphone.getString(4)+hr_microphone.getString(6)+"耳機<br></p>");
                out.println("<p>售價<b>&nbsp;&nbsp;&nbsp;$"+hr_microphone.getString(2)+"<br></p></b>");
                out.println("<a href='product_introduction.html''><button class='productDetails'><b>查看商品</b></button></a></div>");
            }

            out.println("</div>");

    %>

    <script type="text/javascript" src="assets/js/product_overview.js"></script>

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