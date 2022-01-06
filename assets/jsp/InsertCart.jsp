<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %> 
<%@include file = "consql.jsp" %>
<%
    if(session.getAttribute("email") == null) {
        out.println("請先登入再使用購物車功能, 點<a href='login.html'>我</a>回登入頁");
    }
    else{
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String strShoppingCarName = (String)session.getAttribute("strProductNameItroduce");
        String strShoppingCarPrice;
        String strShoppingCarQuantity = request.getParameter("quantity");
        session.removeAttribute("strProductNameItroduce");
        
        sql="SELECT * FROM `product` WHERE `product_name` = '" + strShoppingCarName + "'";
        ResultSet rs_Product=con.createStatement().executeQuery(sql);


        while(rs_Product.next()){
            session.setAttribute("strShoppingCarPrice", rs_Product.getString("price"));
        }

        strShoppingCarPrice=String.valueOf(session.getAttribute("strShoppingCarPrice")); //物件轉字串型別
       /* out.println(strShoppingCarPrice);

        out.println(session.getAttribute("email").toString());
        out.println(strShoppingCarQuantity);
*/
%>

<%  
                      
                        int iProductQ =0;
                        sql="SELECT * FROM `shopping_car`  WHERE `product_name` = '" + strShoppingCarName + "'";  // 購物車裡 產品名都一樣 用於更新
                        ResultSet hr_allcart=con.createStatement().executeQuery(sql);  //用於下面表格
                        int count =0;
                        int q;
                        int pq;
                        while(hr_allcart.next()){
                           ++count;
                            session.setAttribute("q", hr_allcart.getInt("car_quantity"));
                        }
                        out.println(count);
                        if ( count > 1 )
                            {
                              //  out.println("true");
                                iProductQ = Integer.parseInt(strShoppingCarQuantity) + Integer.parseInt(session.getAttribute("q").toString());
                                sql="UPDATE `shopping_car` SET `car_quantity`= '"+ iProductQ +"' WHERE `product_name`='"+ strShoppingCarName +"'" ;
                                int rsUpdate =con.createStatement().executeUpdate(sql);
                                
                                if(rsUpdate > 0){
                                    out.println("success");
                                    response.sendRedirect("../../shopping_cart.jsp");
                                } 
                                else{
                                    out.println("fail");
                                }
                                out.println(sql); 


                            }
                        else
                            {
                                int no;
                                out.println("false");
                              //  Return False;
                              
                                sql="INSERT `shopping_car`(`product_name`, `price`, `car_quantity`, `email`)";//     , `car_quantity`,`email`)";
                                sql+="VALUES ('" + strShoppingCarName + "', ";
                                // sql+="'"+ Integer.valueOf(strShoppingCarPrice).intValue() +"', "; //單價 Integer.valueOf(str).intValue();
                                sql+="'"+ strShoppingCarPrice +"', ";
                                sql+="'"+ Integer.parseInt(strShoppingCarQuantity) +"', ";
                                sql+="'"+ session.getAttribute("email").toString() +"')"; 

                                no =con.createStatement().executeUpdate(sql);
    
                                if (no>0){
                                     session.removeAttribute("strShoppingCarPrice");
                                    //out.println("新增成功");
                                   
                                    response.sendRedirect("../../shopping_cart.jsp");
                                    }
                                else{
                                    out.println(sql);
                                    }
                            }  

    }
    %>
 