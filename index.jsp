<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "assets/jsp/consql.jsp" %>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>in耳吉|首頁</title>
    <link rel="stylesheet" href="assets/css/all.css">
    <style>
    @import url("assets/css/Homepage.css");
    @import url("assets/css/all.css");
    @import url("assets/css/contact_us.css");
    </style>
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
    <div class="slideshow-container">
        <div class="mySlides fade">
            <img src="assets/img/colorfulheadphone.jpg" style="width:100%">
        </div>

        <div class="mySlides fade">
            <img src="assets/img/partyheadphone.jpg" style="width:100%">
        </div>
    
        <div class="mySlides fade">
            <img src="assets/img/businessheadphone.jpg" style="width:100%">
        </div>
    
        <div class="mySlides fade">
            <img src="assets/img/twocolorheadphone.jpg" style="width:100%">
        </div>
    
        <div class="mySlides fade">
            <img src="assets/img/yellowbkheadphone.jpg" style="width:100%">
        </div>
           <br>
        <div style="text-align:center">
        <span class="dot" ></span>
        <span class="dot" ></span>
        <span class="dot" ></span>
        <span class="dot" ></span>
        <span class="dot" ></span>
       </div>
    </div>    
       <div class="hotsales">
           <h2>熱銷商品排行榜</h2>
        <div class="flip-card">
            <a href=" /*產品網址*/ ">
            <div class="flip-card-inner">
              <div class="flip-card-front">
                <div class="bookmarkRibbon">
                    <span class="num">
                        <b>1</b>
                    </span>
                </div>
                <img src="assets/img/unavailable.jpg" class="topsalepic">
              </div>
              <div class="flip-card-back">
                  <br>
                <p class="viewmore">查看更多</p>
              </div>
            </div>
            </a>
          </div>
          <div class="flip-card">
            <a href=" /*產品網址*/ ">
            <div class="flip-card-inner">
              <div class="flip-card-front">
                <div class="bookmarkRibbon">
                    <span class="num">
                        <b>5</b>
                    </span>
                </div>
                <img src="assets/img/unavailable.jpg" class="topsalepic">
              </div>
              <div class="flip-card-back">
                <br>
                <p class="viewmore">查看更多</p>
              </div>
            </div>
            </a>
          </div>
          <div class="flip-card">
            <a href=" /*產品網址*/ ">
            <div class="flip-card-inner">
              <div class="flip-card-front">
                <div class="bookmarkRibbon">
                    <span class="num">
                        <b>2</b>
                    </span></div>
                <img src="assets/img/unavailable.jpg" class="topsalepic">
              </div>
              <div class="flip-card-back">
                <br>
                <p class="viewmore">查看更多</p>
              </div>
            </div>
            </a>
          </div>
          <div class="flip-card">
            <a href=" /*產品網址*/ ">
            <div class="flip-card-inner">
              <div class="flip-card-front">
                <div class="bookmarkRibbon">
                    <span class="num">
                        <b>6</b>
                    </span></div>
                <img src="assets/img/unavailable.jpg" class="topsalepic">
              </div>
              <div class="flip-card-back">
                <br>
                <p class="viewmore">查看更多</p>
              </div>
            </div>
            </a>
          </div>
          <div class="flip-card">
            <a href=" /*產品網址*/ ">
            <div class="flip-card-inner">
              <div class="flip-card-front">
                <div class="bookmarkRibbon">
                    <span class="num">
                        <b>3</b>
                    </span></div>
                <img src="assets/img/unavailable.jpg" class="topsalepic">
              </div>
              <div class="flip-card-back">
                <br>
                <p class="viewmore">查看更多</p>
              </div>
            </div>
            </a>
          </div>
          <div class="flip-card">
            <a href=" /*產品網址*/ ">
            <div class="flip-card-inner">
              <div class="flip-card-front">
                <div class="bookmarkRibbon">
                    <span class="num">
                        <b>7</b>
                    </span></div>
                <img src="assets/img/unavailable.jpg" class="topsalepic">
              </div>
              <div class="flip-card-back">
                  <br>
                <p class="viewmore">查看更多</p>
              </div>
            </div>
            </a>
          </div>
          <div class="flip-card">
            <a href=" /*產品網址*/ ">
            <div class="flip-card-inner">
              <div class="flip-card-front">
                <div class="bookmarkRibbon">
                    <span class="num">
                        <b>4</b>
                    </span></div>
                <img src="assets/img/unavailable.jpg" class="topsalepic">
              </div>
              <div class="flip-card-back">
                <br>
                <p class="viewmore">查看更多</p>
              </div>
            </div>
            </a>
        </div>
            <div class="flip-card">
            <a href=" /*產品網址*/ ">
                <div class="flip-card-inner">
                <div class="flip-card-front">
                    <div class="bookmarkRibbon">
                        <span class="num">
                            <b>8</b>
                        </span>
                    </div>
                    <img src="assets/img/unavailable.jpg" class="topsalepic">
                </div>
                <div class="flip-card-back">
                    <br>
                    <p class="viewmore">查看更多</p>
                </div>
                </div>
            </a>
          </div>
        </div>
        
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

        <footer >
            <div class="footerlink">
                <b>© Copyright 2022, in耳吉 All Rights Reserved <br>
                <%
                      try { 	   

                                  sql="SELECT * FROM `counter`" ;
                                  ResultSet rs=con.createStatement().executeQuery(sql); 

                                  if (rs.next()){
                                      String countString = rs.getString(1);
	                                    int count = Integer.parseInt(countString);

                                      if(session.isNew()){
	                                        count++; //計數器加1
	                                        countString = String.valueOf(count); //寫回資料庫
	                                        sql="UPDATE `counter` SET `count` = " + countString ;
	                                        con.createStatement().execute(sql);
                                      }

                                      out.println("網頁瀏覽人數: "+count+"人"+"</b>");
                                      con.close();//關閉連線 
                                  }
                              
                          }
                    catch (SQLException sExec)  { 
                          out.println("SQL錯誤"+sExec.toString());
                      }
                    
                  %>
            </div>
        </footer>

    <script src="assets/js/HomepageJS.js"></script>
    
    </body>

</html>