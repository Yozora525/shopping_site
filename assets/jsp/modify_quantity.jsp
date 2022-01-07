<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "consql.jsp" %>

<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");

    String strSelectProductName = request.getParameter("productName");
    String strModifyQuantity

    sql = "UPDATE `shopping_car` SET `address`= '" + strAddress + "' WHERE `email` = '" + email + "'" ;
        

        int iCount = con.createStatement().executeUpdate(sql);

        if(iCount > 0){
            out.println("成功");
            response.sendRedirect("../../shopping_cart_check.jsp");
        }

        else{
            out.println("失敗");
        }
%>