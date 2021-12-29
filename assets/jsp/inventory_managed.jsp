<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<%@page import = "java.util.*" %>
<%@include file = "consql.jsp" %>

<%
    int iStatus = Integer.parseInt(response.getParameterValues("status"));
    ResultSet rs;

    

%>