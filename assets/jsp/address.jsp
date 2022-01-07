<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "consql.jsp" %>
<%
    if(request.getParameter("detailedAddress") == null || request.getParameter("detailedAddress").equals("") || session.getAttribute("email") == null || request.getParameter("postalCode") == null ||  request.getParameter("postalCode").equals("")){
        out.println("請先輸入地址再使用結帳功能, 點<a href='../../index.jsp'>我</a>回登入頁");
    }

    else{
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String strModifyQuantity = request.getParameter("modifyQuantity");
        String email=(String)session.getAttribute("email");
        String postalCode =request.getParameter("postalCode");
        String city =request.getParameter("city");
        String detailedAddress =request.getParameter("detailedAddress");
        String strAddress = city + postalCode + detailedAddress;

        // 將地址資料寫入 購物車 資料表
        sql = "UPDATE `shopping_car` SET `address`= '" + strAddress + "' WHERE `email` = '" + email + "'" ;
        //ResultSet rs = con.createStatement().executeQuery(sql);
        // java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());

        int iCount = con.createStatement().executeUpdate(sql);

        if(iCount > 0){
            out.println("成功");
            response.sendRedirect("../../shopping_cart_check.jsp");
        }

        else{
            out.println("失敗");
        }
        
        out.println(strAddress);

    }
    
  //  sql="INSERT `record`(`address`)";
   // sql+="VALUES ('" + postalCode + city + detailedAddress +"') ";
    
%>

<%

/*
    sql="SELECT * FROM `shopping_cart` WHERE `email`= "+ String.valueOf(session.getAttribute("email")) +"'"; // insert入record
    ResultSet rs_rec =con.createStatement.executeQuery(sql);

    sql="INSERT `record` (`email`,`product_name`,`sold_date`,`price`,`sold_quantity`,`total_money`,`address`)";
    sql+="VALUES ('" + session.getAttribute("email").toString() + "', ";
    // sql+="'"+ Integer.valueOf(strShoppingCarPrice).intValue() +"', "; //單價 Integer.valueOf(str).intValue();
    sql+="'"+ rs_rec.getString("product_name") +"', ";
    sql+="'"+ new_date + "', ";
   // sql+="'"+ 
    sql+="'"+ rs_rec.Integer.parseInt().getInt("price")+"', ";
    sql+="'"+ rs_rec.Integer.parseInt().getInt("car_quantity") +"', ";
    sql+="'"+ rs_rec.Integer.parseInt().getInt("car_money")+"',";
    sql+="'"+ rs_rec.getString("address")+"')";

    con.createStatement().executeUpdate(sql);
    response.sendRedirect(order_established.html);
*/



%>