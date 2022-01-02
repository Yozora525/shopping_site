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

    if(strTransactionDate.equals("") || iProductAdd <=0){
        out.println("資料錯誤，請確實填寫資料，點<a href='../../managed_server.jsp'>我</a>回後台管理");
    }

    else{
        // out.println(strTransactionDate);

        sql = "INSERT `transaction`(`product_name`,`import_quantity`, `transaction_date`) " + 
        "VALUES ('"+ strProductName + "','" + iProductAdd + "','" + strTransactionDate + "')";

        no=con.createStatement().executeUpdate(sql);

        if(no > 0){
            out.println("新增資料成功, 回<a href='../../managed_server.jsp'>後台管理</a>");
            con.close();
        }

        else{
            out.println("新增資料失敗, 回<a href='../../managed_server.jsp'>後台管理</a>");
            con.close();
        }

        
        
    }
    
%>
</body>
</html>