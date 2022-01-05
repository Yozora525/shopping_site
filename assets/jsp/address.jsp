<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "consql.jsp" %>
<%
    if(session.getAttribute("email") == null){
        out.println("請先登入再使用留言板功能, 點<a href='../../login.html'>我</a>回登入頁");
    }

    else{
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String postalCode =request.getParameter("postalCode");
        String city =request.getParameter("city");
        String detailedAddress =request.getParameter("detailedAddress");
        int no=0;

        sql="INSERT `shopping_car`(`address`)";
        sql+="VALUES ('" + postalCode + "', ";
        sql+="'"+ city +"', ";
        sql+="'"+ detailedAddress +"')";
    
        no =con.createStatement().executeUpdate(sql);

        if (no>0){
            out.println("新增成功");
            con.close();
            session.removeAttribute("strProductNameItroduce");
        }

        else{
            out.println(sql);
        }
    }
    
    
%>