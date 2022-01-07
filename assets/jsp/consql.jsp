<%

    Class.forName("com.mysql.jdbc.Driver");
    String url = "jdbc:mysql://localhost/?serverTimezone=UTC";
<<<<<<< HEAD
    Connection con=DriverManager.getConnection(url,"root","Yozora525*");
=======
    //Connection con=DriverManager.getConnection(url,"root","Yozora525*");
>>>>>>> 0ed0338d79f2ade076449962d69ba9ecbe6a6c52
    Connection con=DriverManager.getConnection(url,"root","1234");
    String sql = "USE `headphones`";
    con.createStatement().execute(sql);

%>