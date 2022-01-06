<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<%@include file = "consql.jsp" %>
<html>
<head>
    <title>註冊</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8"); 
    response.setCharacterEncoding("UTF-8");
    String strUserName = request.getParameter("user_name");
    String strEmail = request.getParameter("user_email");
    String strPassword = request.getParameter("user_pwd");
    String strConfirmPassword = request.getParameter("user_pwd_2");
    ResultSet rs;

    if(strUserName == null || strUserName.equals("") || strEmail == null || strEmail.equals("") || strPassword == null || strPassword.equals("")|| strConfirmPassword == null || strConfirmPassword.equals("")){
        response.sendRedirect("../../index.jsp");
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
            out.println("註冊成功, <a href='../../index.jsp'>回首頁</a>");
        }

        catch (SQLException sExec){
            out.println("此信箱已註冊,<a href='../../index.jsp'>回首頁</a>");
        }

    }

    else{
        out.println("欄位輸入錯誤,<a href='../../index.jsp'>回首頁</a>");
    }
    
%>
</body>
</html>