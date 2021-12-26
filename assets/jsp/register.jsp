<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<html>
<head>
    <title>註冊</title>
</head>
<body>
<%
    String strUserName = request.getParameter("user_name");
    String strEmail = request.getParameter("user_email");
    String strPassword = request.getParameter("user_pwd");
    String strConfirmPassword = request.getParameter("user_pwd2");
    int index = strEmail.indexOf("@");

    if(strUserName == null || strUserName.equals("") || strEmail == null || strEmail.equals("") || strPassword == null || strPassword.equals("")|| strConfirmPassword == null || strConfirmPassword.equals("")){
        response.sendRedirect("index.html");
	}
    // 檢查兩次輸入的密碼是否一致
    else if(strPassword != strConfirmPassword){
        out.println("兩次輸入密碼不同, 點<a href='index.html'>我</a>回首頁");
    }

    else if(strPassword.length() < 8 || strConfirmPassword.length() < 8 ||strPassword.length() > 16 || strConfirmPassword.length() > 16){
        out.println("字數未符合規定, 點<a href='index.html'>我</a>回首頁");
    }

    else if(index = -1){
        out.println("請輸入正確信箱, 點<a href='index.html'>我</a>回首頁");
    }

    else{

        try {
            Class.forName("com.mysql.jdbc.Driver");

            try {
                String url = "jdbc:mysql://localhost/?serverTimezone=UTC";
                Connection con=DriverManager.getConnection(url,"root","Yozora525*");

                if(con.isClosed())
                out.println("連線建立失敗");
                }
                // 將資料寫入資料庫
                else{
                    String sql = "USE `headphones`";
                    ResultSet rs;

                    con.createStatement().execute(sql);
                    sql = "SELECT * FROM `members`";
                    rs = con.createStatement().executeQuery(sql);

                    sql="INSERT members (`member_mail`, `member_name`, `member_pwd`) ";
                    sql+="VALUES ('" + strEmail + "', ";
                    sql+="'" + strUserName + "', ";
                    sql+="'" + strPassword + "')";

                    con.createStatement().execute(sql);
                    con.close();

                    out.println("註冊成功, 點<a href='index.html'>我</a>回首頁")
                }

            catch (SQLException sExec){
                out.println("SQL錯誤!" + sExec.toString() + ", 點<a href='index.html'>我</a>回首頁");
                }
        }

        catch (ClassNotFoundException err) {
                out.println("class錯誤" + err.toString() + ", 點<a href='index.html'>我</a>回首頁");
        }
    }
%>
</body>
</html>