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
    String strStatus = session.getAttribute("strStatus").toString();
    int no;
    session.removeAttribute("strResult");
    session.removeAttribute("strInventory");
    session.removeAttribute("strStatus");


    if(strResult.equals("1")){
        sql = "UPDATE `product` SET `status` = '0' WHERE `product_name` LIKE '" + strInventory + "'";
        //out.println(sql);
        no=con.createStatement().executeUpdate(sql); //可回傳異動數
			
        if (no > 0){
            out.println("下架更新成功");
            con.close();
        }

        else{
            out.println("更新失敗");
        }
    }

    else if(strResult.equals("0")){
            sql = "UPDATE `product` SET `status` = '1' WHERE `product_name` LIKE '" + strInventory + "'";
            no=con.createStatement().executeUpdate(sql); //可回傳異動數
            if (no > 0){
                out.println("上架更新成功");
                con.close();
            }

            else{
                out.println("更新失敗");
                con.close();
            }
    }
%>
</body>
</html>