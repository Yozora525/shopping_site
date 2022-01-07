<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "consql.jsp" %>

<%

session.getAttribute("email");

sql="INSERT INTO `record` (`email`, `product_name`,`price`,`sold_quantity`,`totoal money`,`address` ) SELECT `email`, `product_name`,`price`,`car_quantity`,`car_money`,`address`  FROM `shopping_car` WHERE `email`= '"+String.valueOf(session.getAttribute("email"))+"'" ;

//INSERT INTO 目標表 (欄位1, 欄位2, ...) SELECT 欄位1, 欄位2, ... FROM 來源表;
int up=con.createStatement().executeUpdate(sql);

if(up>0)
{
    out.println("新增成功");
}
else
{
    out.println("新增失敗");
}


%>
