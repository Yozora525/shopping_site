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

    String strStatus = request.getParameter("status");
    String strResult;
    String strInventoryName;
    ResultSet rs;

    sql = "SELECT `product_name`, `status` FROM `product` WHERE `product_name` LIKE '" + strStatus + "'";
    rs =  con.createStatement().executeQuery(sql);

    if(rs.next()){
        strInventoryName = rs.getString(1);
        strResult = rs.getString(2);
        session.setAttribute("strStatus", strStatus);
        session.setAttribute("strInventory", strInventoryName);
        session.setAttribute("strResult", strResult);
        con.close();
        
        response.sendRedirect("inventory_status.jsp");
    }

    else{
        out.println(sql);
    }
%>
</body>
</html>