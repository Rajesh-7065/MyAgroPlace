<%@page import="com.myagroplace.entities.Seller"%>
<%
    Seller seller = (Seller)session.getAttribute("current_seller");
    
    //BLOCKING THE USER IF NOT SELLER
    if(seller == null)
    {
        session.setAttribute("message", "Invalid User!!, Login first");
        response.sendRedirect("sellerLogin.jsp");
        return;
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VIEW PRODUCTS</title>
        <%@include file = "components/common_css_js.jsp" %>
        <style>
            body{
                background: #e2e2e2;
            }
        </style>
    </head>
    <body>
        <%@include file = "components/navbar.jsp"%>
        <h1>Hello World!</h1>
    </body>
</html>
