<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "consql.jsp" %>

<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");

    String strSelectProductName = request.getParameter("productName");
    String strModifyQuantity = request.getParameter("modifyQuantity");

    sql = "UPDATE `shopping_car` SET `car_quantity`= '" + Integer.parseInt(strModifyQuantity) + "' WHERE `product_name` = '" + strSelectProductName + "'" ;
        

        int iCount = con.createStatement().executeUpdate(sql);

        if(iCount > 0){
            // out.println("成功");
            response.sendRedirect("../../shopping_cart.jsp");
        }

        else{
            out.println("失敗");
        }
%>