<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 

<%  	
    try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                String url="jdbc:mysql://localhost/?serverTimezone=UTC";
                Connection con=DriverManager.getConnection(url,"root","Yozora525*");
                if(con.isClosed())
                    out.println("連線建立失敗");
                }

            catch (SQLException sExec){
                out.println("SQL錯誤!" + sExec.toString());
                }
        }

    catch (ClassNotFoundException err) {
            out.println("class錯誤" + err.toString());
        }
%>