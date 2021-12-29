<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "assets/jsp/consql.jsp" %>
<head>
    <meta charset="UTF-8">
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
            <a href="index.html" class="logo">
                <img src="assets/img/headphones.png" alt="earphonelogo">
            </a>
            <nav class="navBar">
                <a href="product_overview.html">產品介紹</a>
                <a href="login.html">會員中心</a>
                <a href="#">後台管理</a>
                <a href="#">關於我們</a>
                <a href="#" onclick="openNav()">聯絡我們</a>
            </nav>
            <a class="cart" href="#"><img src="assets/img/shopping-cart.png"></a>
            <form class="headerSearch" method="POST" action="assets/jsp/search.jsp">
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

        <div id="inEar" class="tabcontent">
            <div class="commodity">
                <img src="assets/img/MoonDrop_illumination1.jpg">
                <p class="product_name">水月雨 光</p>
                <p>有線入耳式耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$26800</font></p>
                <a href="product_introduction.html"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/MoonDrop_Blessing2.jpg">
                <p class="product_name">水月雨 blessing2</p>
                <p>有線入耳式耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$11000</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/MoonDrop_KXXS.jpg">
                <p class="product_name">水月雨 kxxs</p>
                <p>有線入耳式耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$4980</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/Moondrop_kato.jpg">
                <p class="product_name">水月雨 KATO</p>
                <p>有線入耳式耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$5680</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/MoonDrop_SSR.jpg">
                <p class="product_name">水月雨 SSR</p>
                <p>有線入耳式運動耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$1180</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/SONY_WI-SP500.jpg">
                <p class="product_name">SONY WI-SP500</p>
                <p>無線入耳式運動耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$2390</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/SONY_WI-SP600N.jpg">
                <p class="product_name">SONY WI-SP600N</p>
                <p>無線入耳式運動耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$4990</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
        </div>

        <div id="overEar" class="tabcontent">
            <div class="commodity">
                <img src="assets/img/AKG_K701.jpg">
                <p class="product_name">AKG K701</p>
                <p>有線耳罩式耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$4990</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/AKG_K702.jpg">
                <p class="product_name">AKG K702</p>
                <p>有線耳罩式耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$9200</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/AKG_K712.jpg">
                <p class="product_name">AKG K712</p>
                <p>有線耳罩式耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$7890</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/AKG_K240.jpg">
                <p class="product_name">AKG K240</p>
                <p>有線耳罩式耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$2200</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/ATH_SR50BT.jpg">
                <p class="product_name">鐵三角 SR50BT</p>
                <p>無線耳罩式耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$7700</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/ATH_M50xBT2.jpg">
                <p class="product_name">鐵三角 ATH-M50xBT2</p>
                <p>無線耳罩式耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$7600</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/SONY_MDRXB950N1.jpg">
                <p class="product_name">SONY MDR-XB950N1</p>
                <p>無線耳罩式降噪耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$7490</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/SONY_WHH900N.jpg">
                <p class="product_name">SONY WH-H900N</p>
                <p>無線耳罩式降噪耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$7490</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
        </div>

        <div id="wireless" class="tabcontent">
            <div class="commodity">
                <img src="assets/img/ATH_HL7BT.jpg">
                <p class="product_name">鐵三角 HL7BT</p>
                <p>無線耳罩式耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$5700</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/ATH_WS660BT.jpg">
                <p class="product_name">鐵三角 WS660BT</p>
                <p>無線耳罩式耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$5200</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/ATH_SR50BT.jpg">
                <p class="product_name">鐵三角 SR50BT</p>
                <p>無線耳罩式耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$7700</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/ATH_M50xBT2.jpg">
                <p class="product_name">鐵三角 ATH-M50xBT2</p>
                <p>無線耳罩式耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$7600</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/SONY_WH1000XM4.jpg">
                <p class="product_name">SONY WH-1000XM4</p>
                <p>無線耳罩式降噪耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$10900</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/Galaxy_Buds2.jpg">
                <p class="product_name">Galaxy Buds2</p>
                <p>無線入耳式降噪耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$4990</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/Galaxy_BudsPro.jpg">
                <p class="product_name">Galaxy Buds Pro</p>
                <p>無線入耳式降噪耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$6990</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
        </div>

        <div id="sport" class="tabcontent">
            <div class="commodity">
                <img src="assets/img/SONY_WI-SP500.jpg">
                <p class="product_name">SONY WI-SP500</p>
                <p>無線入耳式運動耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$2390</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/SONY_WI-SP600N.jpg">
                <p class="product_name">SONY WI-SP600N</p>
                <p>無線入耳式運動耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$4990</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/SONY_WISP510.jpg">
                <p class="product_name">SONY WI-SP510</p>
                <p>無線入耳式運動耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$2690</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/MoonDrop_SSR.jpg">
                <p class="product_name">水月雨 SSR</p>
                <p>有線入耳式運動耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$1180</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
        </div>
        
        <div id="noiseReduct" class="tabcontent">
            <div class="commodity">
                <img src="assets/img/SONY_MDRXB950N1.jpg">
                <p class="product_name">SONY MDR-XB950N1</p>
                <p>無線耳罩式降噪耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$7490</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/SONY_WHH900N.jpg">
                <p class="product_name">SONY WH-H900N</p>
                <p>無線耳罩式降噪耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$7490</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/SONY_WH1000XM4.jpg">
                <p class="product_name">SONY WH-1000XM4</p>
                <p>無線耳罩式降噪耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$10900</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/Galaxy_Buds2.jpg">
                <p class="product_name">Galaxy Buds2</p>
                <p>無線入耳式降噪耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$4990</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/Galaxy_BudsPro.jpg">
                <p class="product_name">Galaxy Buds Pro</p>
                <p>無線入耳式降噪耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$6990</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
        </div>

        <div id="microphone" class="tabcontent">
            <div class="commodity">
                <img src="assets/img/ATH_SR50BT.jpg">
                <p class="product_name">鐵三角 SR50BT</p>
                <p>無線耳罩式耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$7700</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/ATH_M50xBT2.jpg">
                <p class="product_name">鐵三角 ATH-M50xBT2</p>
                <p>無線耳罩式耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$7600</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/SONY_WI-SP500.jpg">
                <p class="product_name">SONY WI-SP500</p>
                <p>無線入耳式運動耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$2390</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/SONY_WI-SP600N.jpg">
                <p class="product_name">SONY WI-SP600N</p>
                <p>無線入耳式降噪耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$4990</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/SONY_WHH900N.jpg">
                <p class="product_name">SONY WH-H900N</p>
                <p>無線耳罩式降噪耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$7490</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
            <div class="commodity">
                <img src="assets/img/SONY_WH1000XM4.jpg">
                <p class="product_name">SONY WH-1000XM4</p>
                <p>無線耳罩式降噪耳機</p>
                <p>售價&nbsp;&nbsp;&nbsp;<font class="product_price">$10900</font></p>
                <a href="#"><button class="productDetails"><b>查看商品</b></button></a>
            </div>
        </div>
    </div>

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