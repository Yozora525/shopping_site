<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "consql.jsp" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    
    String email=String.valueOf(session.getAttribute("email"));
    String strShoppingDeleteName=request.getParameter("deleteProductName");
    //out.println(strShoppingDeleteName);
    
    //out.println(email);

    sql="DELETE FROM `shopping_car` WHERE (`product_name` LIKE '"+ strShoppingDeleteName +" ' )AND (`email` LIKE '"+ email +"')" ;
    int hs_Delete=con.createStatement().executeUpdate(sql);
    //out.println(hs_Delete);
    if(hs_Delete > 0){
        out.println("success");
    }
    else
    {
        out.println("fail");
        out.println(sql);
    }

%>