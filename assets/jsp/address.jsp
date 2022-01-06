<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "consql.jsp" %>
<%
    if(request.getParameter("detailedAddress") == null){
        out.println("請先輸入地址再使用結帳功能, 點<a href='../../assets/jsp/login.jsp'>我</a>回登入頁");
    }

    else{
        String email=(String)session.getAttribute("email");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String postalCode =request.getParameter("postalCode");
        String city =request.getParameter("city");
        String detailedAddress =request.getParameter("detailedAddress");
        sql = "SELECT * FROM `shopping_car` where `email` = '"+session.getAttribute("email")+"';"; 
        ResultSet rs = con.createStatement().executeQuery(sql);
        java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
        
        while(rs.next()){
        sql="UPDATE `shopping_car` SET `address`= '"+postalCode+city+detailedAddress;
        sql+="' where `email` ='"+email+"'";
       // sql+="'"+ city +"', ";
     //   sql+="'"+ detailedAddress +"')";
        con.createStatement().execute(sql);

        }
            out.println("新增地址成功!"); //之後會改成 結帳成功

    }
    
  //  sql="INSERT `record`(`address`)";
   // sql+="VALUES ('" + postalCode + city + detailedAddress +"') ";
    
%>

<%
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



%>