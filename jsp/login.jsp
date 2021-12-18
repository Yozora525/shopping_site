<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<html>
    <head>
        <title>登入</title>
    </head>
    <body>
<%
    String sUserID = request.getParameter("sUserID");
    String sUserPWD = request.getParameter("sUserPWD");

    if(sUserID==null || sUserPWD==null || sUserID.equals("") || sUserPWD.equals("")){
        response.sendRedirect("index.html");
	}

	else{

        if(){
            response.sendRedirect(""); // 導向後台
        }

        else if(){
            response.sendRedirect(""); // 導向會員
        }

        else{
            //out.println("帳號或密碼輸入錯誤") // 輸入錯誤, 回首頁,用js來做？
        }

	}
%>
    </body>
</html>