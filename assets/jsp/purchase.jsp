<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<%@page import = "java.util.Date" %>
<%@page import = "java.text.SimpleDateFormat" %>
<%@include file = "consql.jsp" %>
<html>
<head></head>
<body>

<%

    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    
    String strTransactionDate = request.getParameter("purchase_date");
    String strProductName = request.getParameter("product_name");
    int iProductAdd = Integer.parseInt(request.getParameter("product_add"));
    int no;


        // out.println(strTransactionDate);

        sql = "INSERT `transaction`(`product_name`,`import_quantity`) " + 
        "VALUES ('"+ strProductName + "','" + iProductAdd + "')";

        no=con.createStatement().executeUpdate(sql);

        if(no > 0){
            out.println("新增資料成功, 回<a href='../../managed_server.jsp'>後台管理</a>");
            //con.close();
        }

        else{
            out.println("新增資料失敗, 回<a href='../../managed_server.jsp'>後台管理</a>");
            con.close();
        }
        
        sql = "SELECT * FROM `transaction` WHERE `product_name` LIKE '" + strProductName + "'";
        ResultSet rs = con.createStatement().executeQuery(sql);
        int iInventoryQuantity = 0;

        while(rs.next()){
            iInventoryQuantity += rs.getInt(2) - rs.getInt(3);
        }

        sql = "UPDATE `inventory` SET `inventory_quantity` = '" + iInventoryQuantity + "' WHERE `product_name` LIKE '" + strProductName + "'";

        int c=con.createStatement().executeUpdate(sql); //可回傳異動數
        if (c > 0){
            out.println("");
            con.close();
        }
    
%>
</body>
</html>