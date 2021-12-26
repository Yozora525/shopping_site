<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %> 

<%
    String strUserEmail = request.getParameter("user_email");
    String strPassword = request.getParameter("user_pwd");
    // 判斷是否有填寫欄位
    if(strUserEmail == null || strPassword==null || strUserEmail.equals("") || strPassword.equals("")){
        response.sendRedirect("index.html");
	}

	else{

        try {
            Class.forName("com.mysql.jdbc.Driver");

            try {
                String url = "jdbc:mysql://localhost/?serverTimezone=UTC";
                Connection con=DriverManager.getConnection(url,"root","Yozora525*");

                if(con.isClosed())
                out.println("連線建立失敗");
                }

                else{
                    String sql = "USE `headphones`";
                    ResultSet rs;

                    con.createStatement().execute(sql);
                    sql = "SELECT `member_mail`, `member_pwd` FROM `members` WHERE `member_mail` = " + strUserEmail;
                    rs = con.createStatement().executeQuery(sql);
                    // 判斷帳密是否正確
                    if(strUserEmail == rs.getString("member_mail") && strPassword == rs.getString("member_pwd")){
                        sendRedirect("");
                    }

                    else{
                        out.println("帳密輸入錯誤!, 點<a href='index.html'>我</a>回首頁");
                    }

                    con.createStatement().execute(sql);
                    con.close();
                    }

            catch (SQLException sExec){
                out.println("SQL錯誤!" + sExec.toString() + ", 點<a href='index.html'>我</a>回首頁");
            }
        }

            catch (ClassNotFoundException err) {
                out.println("class錯誤" + err.toString() + ", 點<a href='index.html'>我</a>回首頁");
            }
	}
%>
