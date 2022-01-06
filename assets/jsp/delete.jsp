<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "assets/jsp/consql.jsp" %>
<%
    String email=String.valueOf(session.getAttribute("email"));
    out.println(request.getParameter("product_name"));
    
    out.println(email);

    sql="DELETE FROM `shopping_car` WHERE `product_name` = '"+ product_name +" ' AND `email`='"+ email +"'" ;
    ResultSet hs_Delete=con.createStatement().executeQuery(sql);
    
    
    


%>