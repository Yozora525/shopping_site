<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "consql.jsp" %>

<% 
    // 判斷是否有登入
    if(session.getAttribute("email") == null){
        out.println("請確實登入,<a href='../../login.html'>回登入頁</a>")
        con.close();
    }

    else{
        out.println("登入成功!, <a href='../../index.html'>回首頁</a>")
    }
%>