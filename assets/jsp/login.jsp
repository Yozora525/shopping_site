<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "consql.jsp" %>

<%
    String strUserEmail = request.getParameter("user_email");
    String strPassword = request.getParameter("user_pwd");
    ResultSet rs;
    // 判斷是否有填寫欄位
    if(strUserEmail == null || strPassword==null || strUserEmail.equals("") || strPassword.equals("")){
        response.sendRedirect("../../index.html");
	}

	else{

        sql = "SELECT `email`, `password` FROM `user` WHERE `email` = '" + strUserEmail + "' AND `password` = '" + strPassword + "'";
        rs = con.createStatement().executeQuery(sql);
        
        // 判斷帳密是否正確
        if(rs.next()){
            session.setAttribute("email", strUserEmail);
            con.close();
        }

        else{
            con.close();
            out.println("帳密輸入錯誤!, 點<a href='../../index.html'>我</a>回首頁");
        }

        
	}
%>
