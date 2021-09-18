<%@page import="com.myagroplace.helper.Helper"%>
<%@page import="com.myagroplace.entities.Product_Category"%>
<%@page import="com.myagroplace.dao.CategoryDao"%>
<%@page import="java.util.List"%>
<%@page import="com.myagroplace.entities.Product"%>
<%@page import="com.myagroplace.dao.ProductDao"%>
<%@page import="com.myagroplace.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MyAgroPlace-HOME</title>
        <%@include file = "components/common_css_js.jsp"%>
    </head>
    <style>
        body
        {
            background: rgba(0, 128, 0, 0.1);
                     
        }
        
    </style>
    <body>
        <%@include file = "components/navbar.jsp"%>
        <br><br>
            <!---<h1 style="font-size:60px; color:#996600"><center>Welcome To MyAgroPlace</center></h1>
            <h1 style="font-size:25px; color:#996600"><center>Platform to Promote Modern Agriculture</center></h1>--->
            <div class ="container-fluid">
                <div class="row mt-3 mx-2">

                    <%
                        String cat = request.getParameter("category");
                        //out.println(cat);
                        
                        //FETCHING PRODUCTS
                        ProductDao dao = new ProductDao(FactoryProvider.getFactory());
                        List<Product> list = dao.getAllProducts();
                        if(cat == null || cat.trim().equals("all")){
                            list = dao.getAllProducts();
                        }else{
                            int cid = Integer.parseInt(cat.trim());
                            list = dao.getAllProductsById(cid);
                        }

                        //FETCHING CATEGORIES
                        CategoryDao cdao = new  CategoryDao(FactoryProvider.getFactory());
                        List<Product_Category> clist = cdao.getCategories();
                    %>

                    <!---SHOW CATEGORIES--->
                    <div class="col-md-2">
                        <div class="list-group">
                            <a href="index.jsp?category=all" class="list-group-item list-group-item-action active" aria-current="true">
                                All Products
                            </a>

                            <%
                                for(Product_Category c:clist)
                                {
                            %>
                                    <a href="index.jsp?category=<%=c.getCategoryId()%>" class="list-group-item list-group-item-action"><%= c.getCategoryTitle() %></a>                        
                            <% 
                                }
                            %>
                        </div>

                    </div> 

                    <!---SHOW PRODUCTS--->
                    <div class="col-md-10">

                        <!---row--->
                        <div class="row mt-4">

                            <!---column--->
                            <div class="col-md-12">

                                <div class="card-columns">
                                    <!---traversing products--->

                                    <%
                                        for(Product p:list){
                                    %>
                                    <div class="card">
                                        <div class="container text-center">
                                            <img src="img/<%=p.getProductPhoto()%>" style="max-height: 300px; max-width: 100; width: auto;" class="card-img-top">                                        
                                        </div>
                                        <div class="card-body">
                                            <h5 class="card-title"><%=p.getProductName()%></h5>
                                            <p class="card-text">
                                                <%=Helper.get10Words(p.getProductDescription())%>
                                            </p>
                                        </div>

                                        <div class="card-footer">
                                            <button class="btn custom-bg text-white" onclick="addToCart(<%=p.getProductId()%>, '<%=p.getProductName()%>', <%=p.getProductPrice()%>)">Add to Cart</button>
                                            <button class="btn btn-outline-primary">₹ <%=p.getProductPrice()%></button>
                                        </div>
                                    </div>
                                    <%
                                        }
                                        if(list.size() == 0){
                                            out.println("<h3>No item in this category</h3>");
                                        }
                                    %>
                                </div>
                            </div>
                        <!---<h1>Number of Products is <%= list.size() %></h1>
                        <%
                           /* for(Product product:list)
                            {
                                out.println(product.getProductPhoto() + "<br>");
                                out.println(product.getProductName() + "<br><br>");
                            }*/
                        %>--->
                        </div>

                    </div>
                </div>
            </div>
            
       <%@include file="components/common_modals.jsp" %>
    </body>
    
</html>
