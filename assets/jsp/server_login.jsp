<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "consql.jsp" %>

<%
    String strServerEmail = request.getParameter("server_email");
    String strPassword = request.getParameter("server_password");
    ResultSet rs;
    PreparedStatement servertmt = null;
    // 判斷是否有填寫欄位
    if(strServerEmail == null || strPassword==null || strServerEmail.equals("") || strPassword.equals("")){
        out.println("請確實填寫資料!, 點<a href='../../managed_server_login.html'>我</a>回登入頁面");
	}

	else{
        sql = "SELECT `server_email`, `server_pwd` FROM `server` WHERE `server_email` = ? AND `server_pwd` = ?";
        servertmt = con.prepareStatement(sql);
        servertmt.setString(1, strServerEmail);
        servertmt.setString(2, strPassword);
        rs = servertmt.executeQuery();
        //rs = con.createStatement().executeQuery(sql);
        
        // 判斷帳密是否正確
        if(rs.next()){
            session.setAttribute("server_email", strServerEmail);
            con.close();
            response.sendRedirect("../../managed_server.jsp");
        }

        else{
            con.close();
            out.println("帳密輸入錯誤!, 點<a href='../../index.jsp'>我</a>回首頁");
        }

	}
%>
