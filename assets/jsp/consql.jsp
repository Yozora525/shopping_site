<%

    Class.forName("com.mysql.jdbc.Driver");
    String url = "jdbc:mysql://localhost/?serverTimezone=UTC";
    Connection con=DriverManager.getConnection(url,"root","Yozora525*");
    // Connection con=DriverManager.getConnection(url,"root","1234");
    String sql = "USE `headphones`";
    con.createStatement().execute(sql);

%>