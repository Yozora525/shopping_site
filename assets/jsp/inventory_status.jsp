<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<%@page import = "java.util.*" %>
<%@include file = "consql.jsp" %>
<%@include file = "inventory_managed.jsp" %>
<html>
<head>

</head>
<body>
<%

    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");


        if(strResult.equals("1")){
            sql = "UPDATE `product` SET `status` = '0' WHERE `product_name` LIKE '" + strInventoryName + "'";
            int no=con.createStatement().executeUpdate(sql); //可回傳異動數
			
            if (no > 0){
                out.println("更新成功");
                con.close();
            }
            
            else if(strResult.equals("0")){
                sql = "UPDATE `product` SET `status` = '1' WHERE `product_name` LIKE '" + strInventoryName + "'";
                no=con.createStatement().executeUpdate(sql); //可回傳異動數
                
                if (no > 0){
                    out.println("更新成功");
                    con.close();
                }

                else{
                    out.println("更新失敗");
                    con.close();
                }
            }
        }
%>
</body>
</html>