<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "consql.jsp" %>

<%
    session.removeAttribute("server_email");
    response.sendRedirect("../../index.jsp");
%>