<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<%@include file = "consql.jsp" %>

<%
    if(session.getAttribute("email") != null) {

    }

    else {
        out.println("請確實登入, 點<a href='../../index.jsp'>我</a>回首頁");
    }
    
    
%>
