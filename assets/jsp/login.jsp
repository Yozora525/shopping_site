<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>

<%
    String strUserEmail = request.getParameter("user_email");
    String strPassword = request.getParameter("password");

    if(strUserEmail == null || strPassword==null || strUserEmail.equals("") || strPassword.equals("")){
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
