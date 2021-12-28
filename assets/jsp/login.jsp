<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "consql.jsp" %>

<%
    String strUserEmail = request.getParameter("user_email");
    String strPassword = request.getParameter("password");
    ResultSet rs;
    PreparedStatement pstmt = null;
    // 判斷是否有填寫欄位
    if(strUserEmail == null || strPassword==null || strUserEmail.equals("") || strPassword.equals("")){
        out.println("請確實填寫資料!, 點<a href='../../login.jsp'>我</a>回登入頁面");
	}

	else{
        sql = "SELECT `email`, `password` FROM `user` WHERE `email` = ? AND `password` = ?";
        pstmt = con.prepareStatement(sql);
        pstmt.setString(1, strUserEmail);
        pstmt.setString(2, strPassword);
        rs = pstmt.executeQuery();
        //rs = con.createStatement().executeQuery(sql);
        
        // 判斷帳密是否正確
        if(rs.next()){
            session.setAttribute("email", strUserEmail);
            con.close();
            out.println("OK!");
        }

        else{
            con.close();
            out.println("帳密輸入錯誤!, 點<a href='../../index.jsp'>我</a>回首頁");
        }

	}
%>
