<%

    Class.forName("com.mysql.jdbc.Driver");
    String url = "jdbc:mysql://localhost/?serverTimezone=UTC";
    Connection con=DriverManager.getConnection(url,"root","Yozora525*");
    String sql = "USE `headphones`";
    con.createStatement().execute(sql);

%>