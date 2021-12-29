<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<%@page import = "java.util.*" %>

<%@include file = "inventory_managed.jsp" %>
<html>
<head>

</head>
<body>
<%

    Class.forName("com.mysql.jdbc.Driver");
    String urll = "jdbc:mysql://localhost/?serverTimezone=UTC";
    Connection conn=DriverManager.getConnection(urll,"root","Yozora525*");
    // Connection con=DriverManager.getConnection(url,"root","1234");
    String sqll = "USE `headphones`";
    con.createStatement().execute(sqll);

    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");


        if(strResult.equals("1")){
            sqll = "UPDATE `product` SET `status` = '0' WHERE `product_name` LIKE '" + strInventoryName + "'";
            int no=conn.createStatement().executeUpdate(sqll); //可回傳異動數
			
            if (no > 0){
                out.println("更新成功");
                conn.close();
            }
            
            else if(strResult.equals("0")){
                sqll = "UPDATE `product` SET `status` = '1' WHERE `product_name` LIKE '" + strInventoryName + "'";
                no=conn.createStatement().executeUpdate(sqll); //可回傳異動數
                
                if (no > 0){
                    out.println("更新成功");
                    conn.close();
                }

                else{
                    out.println("更新失敗");
                    conn.close();
                }
            }
        }
%>
</body>
</html>