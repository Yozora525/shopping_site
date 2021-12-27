<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "consql.jsp" %>

<% 
    String strKeyWord = request.getParameter("key_word");
    ResultSet rs;

    sql = "SELECT * FROM `user` WHERE `product_name` = '%" + strKeyWord + "%' OR `product_introduce` = '%" + strKeyWord + "%'";
    rs = con.createStatement().executeQuery(sql);

    if(rs.next()){
            // ...內容
            con.close();
        }

        else{
            con.close();
            out.println("查無搜尋結果");
        }
%>