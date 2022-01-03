<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<%@include file = "consql.jsp" %>

<%
    if(session.getAttribute("email") != null) {
        String strOriginalUsername = request.getParameter("original_username");
        String strNewUsername = request.getParameter("new_username");

        if(strOriginalUsername == null || strNewUsername == null || strOriginalUsername.equals("") || strNewUsername.equals("")) {
            out.println("輸入錯誤, 點<a href='../../member_center.jsp'>我</a>回會員中心");
        }

        else{
            
            sql = "UPDATE `user` SET `username` = '" + strNewUsername + "' WHERE `username` = '" + strOriginalUsername + "'";
            int no=con.createStatement().executeUpdate(sql); //可回傳異動數
			if (no > 0){
                out.println("修改成功, 點<a href='../../member_center.jsp'>我</a>回會員中心");
                con.close();
            }
            
            else{
                out.println("修改失敗, 點<a href='../../member_center.jsp'>我</a>回會員中心");
                con.close();
            }
        }
    }

    else {
        response.sendRedirect("../../login.html");
    }
    
    
%>
