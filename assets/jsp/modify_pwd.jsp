<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<%@include file = "consql.jsp" %>

<%
    if(session.getAttribute("email") != null) {
        String strOriginalPwd = request.getParameter("original_pwd");
        String strNewPwd = request.getParameter("new_pwd");
        String strCheckPwd = request.getParameter("check_pwd");

        if(strOriginalPwd == null || strNewPwd == null || strCheckPwd ==null || strOriginalPwd.equals("") || strNewPwd.equals("") || strCheckPwd.equals("")) {
            out.println("輸入錯誤, 點<a href='../../member_center.jsp'>我</a>回會員中心");
        }

        else{
            if(strNewPwd.equals(strCheckPwd)){
                sql = "UPDATE `user` SET `password` = '" + strNewPwd + "' WHERE `password` = '" + strOriginalPwd + "'";
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

            else{
                out.println("修改失敗, 點<a href='../../member_center.jsp'>我</a>回會員中心");
            }
            
        }
    }

    else {
        response.sendRedirect("../../login.html");
    }
    
    
%>
