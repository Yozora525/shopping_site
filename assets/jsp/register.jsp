<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<html>
<head>
    <title>註冊</title>
</head>
<body>
<%
    Class.forName("com.mysql.jdbc.Driver");
    String url = "jdbc:mysql://localhost/?serverTimezone=UTC";
    Connection con=DriverManager.getConnection(url,"root","Yozora525*");
    String sql = "USE `headphones`";
    ResultSet rs;
    con.createStatement().execute(sql);

    String strUserName = request.getParameter("user_name");
    String strEmail = request.getParameter("user_email");
    String strPassword = request.getParameter("user_pwd");
    String strConfirmPassword = request.getParameter("user_pwd_2");

    if(strUserName == null || strUserName.equals("") || strEmail == null || strEmail.equals("") || strPassword == null || strPassword.equals("")|| strConfirmPassword == null || strConfirmPassword.equals("")){
        response.sendRedirect("../../index.html");
	}
    // 檢查兩次輸入的密碼是否一致
    
    if(strPassword.equals(strConfirmPassword)){
        try {
                
            sql = "SELECT * FROM `user`";
            rs = con.createStatement().executeQuery(sql);

            sql="INSERT user (`email`, `username`, `password`) ";
            sql+="VALUES ('" + strEmail + "', ";
            sql+="'" + strUserName + "', ";
            sql+="'" + strPassword + "')";

            con.createStatement().execute(sql);
            con.close();
            out.println("註冊成功, <a href='../../index.html'>回首頁</a>");
        }

        catch (SQLException sExec){
            out.println("此信箱已註冊,<a href='../../index.html'>回首頁</a>");
        }

    }

    else{
        out.println("欄位輸入錯誤,<a href='../../index.html'>回首頁</a>");
    }

    
%>
</body>
</html>