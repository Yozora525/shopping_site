<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "consql.jsp" %>
<%
    if(session.getAttribute("detailedAddress") == null){
        out.println("請先輸入地址再使用結帳功能, 點<a href='../../login.html'>我</a>回登入頁");
    }

    else{
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String postalCode =request.getParameter("postalCode");
        String city =request.getParameter("city");
        String detailedAddress =request.getParameter("detailedAddress");
        int non=0;
        out.println("postalCode");
        out.println("city");
        out.println("detailedAddress");
        
        sql="INSERT `shopping_car`(`address`)";
        sql+="VALUES ('" + request.getParameter("postalCode") + request.getParameter("city") + request.getParameter("detailedAddress") +"') ";
       // sql+="'"+ city +"', ";
     //   sql+="'"+ detailedAddress +"')";
    
        non =con.createStatement().executeUpdate(sql);

        if (non >0){
            out.println("新增地址成功!"); //之後會改成 結帳成功
            con.close();
        }

        else{
            out.println(sql);
        }
    }
    
    sql="INSERT `record`(`address`)";
    sql+="VALUES ('" + postalCode + city + detailedAddress +"') ";
    
%>