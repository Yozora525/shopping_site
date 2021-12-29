<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<%@page import = "java.util.*" %>
<%@include file = "consql.jsp" %>

<html>
<head>

</head>
<body>
<%

    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");

    String strInventory = session.getAttribute("strInventory").toString();
    String strResult = session.getAttribute("strResult").toString();

    // out.println(strInventory);
    // out.println(strResult);
        if(strResult.equals("1")){
            sql = "UPDATE `product` SET `status` = '0' WHERE `product_name` LIKE '" + strInventory + "'";
            int no=con.createStatement().executeUpdate(sql); //可回傳異動數
			
            if (no > 0){
                out.println("更新成功");
                session.removeAttribute("strResult");
                session.removeAttribute("strInventory");
                con.close();
            }
            
            else if(strResult.equals("0")){
                sql = "UPDATE `product` SET `status` = '1' WHERE `product_name` LIKE '" + strInventory + "'";
                no=con.createStatement().executeUpdate(sql); //可回傳異動數
                
                if (no > 0){
                    out.println("更新成功");
                    session.removeAttribute("strResult");
                    session.removeAttribute("strInventory");
                    con.close();
                }

                else{
                    out.println("更新失敗");
                    session.removeAttribute("strResult");
                    session.removeAttribute("strInventory");
                    con.close();
                }
            }
        }
%>
</body>
</html>