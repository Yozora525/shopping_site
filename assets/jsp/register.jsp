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
    String strSex = request.getParameterValue("gender");
    String strPhone = request.getParameter("phone");
    String strEmail = request.getParameter("user_email");
    String strPassword = request.getParameter("password");
    String strAdr = request.getParameter("");
    

    if(strUserName==null || strUserName.equals("") ){
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