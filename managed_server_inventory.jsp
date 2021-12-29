<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "consql.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>in耳吉|存貨管理</title>
    <link rel="stylesheet" href="assets/css/all.css">
    <link rel="stylesheet" href="assets/css/managed_server_inventory.css">
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
                <a href="login.html">後台管理</a>
                <a href="#">訂單紀錄</a>
                <a href="#" onclick="openNav()">聯絡我們</a>
            </nav>
            <a class="cart" href="#"><img src="assets/img/shopping-cart.png"></a>
            <form class="headerSearch" method="POST" action="assets/jsp/search.jsp">
                <input type="search" name="key_word" placeholder="請輸入產品名稱">
                <button><img src="assets/img/magnifying-glass.png"></button>
            </form>
        </div>
    </header>
    <h1>存貨管理</h1>
        <div class="recordlist" >
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

            <div id="myNav" class="overlay">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                <div class="overlay-content">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3617.2668942752266!2d121.24136351423672!3d24.957032547528176!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x346822143c046009%3A0x63e3ef21e3beebac!2z5Lit5Y6f5aSn5a246LOH6KiK566h55CG5a2457O7!5e0!3m2!1szh-TW!2stw!4v1640762486119!5m2!1szh-TW!2stw" allowfullscreen="" loading="lazy"></iframe>
                    <h3>
                        隸屬學系：中原大學資訊管理學系<br>
                        聯絡地址：320314 桃園市中壢區中北路200號 <br>
                        電話：886-3-265-5401<br>
                    <hr>
                    <form method="post" action=" ">
                        <input class="contact" type="text" name="contact_name" placeholder="姓名"><br>
                        <input class="contact" type="email" name="contact_email" placeholder="Email"><br>
                    <textarea name="contact" cols="52" rows="10" wrap="hard" placeholder="歡迎留下任何鼓勵或意見回饋，謝謝您！"></textarea><br>
                    <input class="button" type="submit" value="確認送出" />
                    </form>
                    </h3>
                </div>
              </div>
              
              <script type="text/javascript" src="assets/js/contact_us.js"></script> 
</body>
</html>