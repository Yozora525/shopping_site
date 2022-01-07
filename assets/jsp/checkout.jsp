<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "consql.jsp" %>

<%

session.getAttribute("email");

sql="INSERT INTO `record` (`email`, `product_name`,`price`,`sold_quantity`,`total_money`,`address` ) SELECT `email`, `product_name`,`price`,`car_quantity`,`price`,`address`  FROM `shopping_car` WHERE `email`= '"+String.valueOf(session.getAttribute("email"))+"'" ;
//ORDER BY `comment_date` DESC 排時間
//INSERT INTO 目標表 (欄位1, 欄位2, ...) SELECT 欄位1, 欄位2, ... FROM 來源表;
int up=con.createStatement().executeUpdate(sql);

if(up >0){
    sql="INSERT INTO `transaction` (`product_name`,`sold_quantity`) SELECT `product_name`,`car_quantity` FROM `shopping_car` WHERE `email`= '"+String.valueOf(session.getAttribute("email"))+"'" ;
    int upda=con.createStatement().executeUpdate(sql);
    if(upda >0){
        out.println("success");

        sql="SELECT * FROM `transaction` ORDER BY `product_name` DESC";
        ResultSet hs_transaction = con.createStatement().executeQuery(sql);
        int hsInventoryQuantity = 0;
        int rsInsert=0;

        
        while(hs_transaction.next() ){
            hsInventoryQuantity += hs_transaction.getInt(2) - hs_transaction.getInt(3);
                sql="UPDATE `inventory` SET `inventory_quantity` = '" + hsInventoryQuantity + "' WHERE `product_name`= '" + hs_transaction.getString(1) + "'";
                rsInsert = con.createStatement().executeUpdate(sql);
        }


        sql="DELETE QUICK FROM `shopping_car` WHERE `email` = '"+ String.valueOf(session.getAttribute("email")) + "'";
        int deleteN=con.createStatement().executeUpdate(sql);
        if(deleteN > 0){
            response.sendRedirect("../../order_established.html");
        }

        else{
            out.println("error");
        }
    }

    else{
        out.println("fail");
    }
}

else{
    out.println("新增失敗");
}


%>
