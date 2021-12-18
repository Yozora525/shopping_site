<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<html>
<head>
        <title>註冊</title>
</head>
<body>
    <%@ include file="conMySQL.jsp"%>
<%
    
    String strUserName = request.getParameter("user_name");
    String strUserPWD = request.getParameter("password");

    if(strUserID==null || strUserPWD==null || strUserID.equals("") || strUserPWD.equals("")){
        response.sendRedirect("index.html");
	}

	else{
        // 判斷email 是否有註冊過，如果有回註冊，若沒有註冊，將資料寫入資料庫
        if(){

        }

        else{

        }
	}
%>
</body>
</html>