<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "consql.jsp" %>
<%!
	String newline(String str){
	 int index=0;
	 while((index=str.indexOf("\n")) !=-1)
	 str=str.substring(0,index)+"<br>"+str.substring(index+1);
	 return(str);
	}
%>
<%
    if(session.getAttribute("email") == null){
        out.println("請先登入再使用留言板功能, 點<a href='../../login.html'>我</a>回登入頁");
    }

    else{
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String strComment =request.getParameter("commentContent");
        int no=0;

        sql="INSERT `evaluation`(`email`, `product_name`, `comment`)";
        sql+="VALUES ('" + session.getAttribute("email") + "', ";
        sql+="'"+ session.getAttribute("strProductNameItroduce") +"', ";
        sql+="'"+newline(strComment)+"')";
    
        no =con.createStatement().executeUpdate(sql);

        if (no>0){
            out.println("新增成功");
            con.close();
            session.removeAttribute("strProductNameItroduce");
        }

        else{
            out.println(sql);
        }
    }
    
    
%>