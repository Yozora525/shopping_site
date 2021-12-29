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
    String strStatus = request.getParameter("status");
    ResultSet rs;

    sql = "SELECT `product_name`, `status` FROM `product` WHERE `product_name` LIKE '" + strStatus + "'";
    rs = con.createStatement().executeQuery(sql);

    if(rs.next()){
        out.println(rs.getString(1));
    }

%>
</body>
</html>