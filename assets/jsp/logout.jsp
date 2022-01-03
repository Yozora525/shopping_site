<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "consql.jsp" %>

<%
    session.removeAttribute("email");
    response.sendRedirect("../../index.jsp");
%>