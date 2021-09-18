<%@page import="java.util.Map"%>
<%@page import="com.myagroplace.helper.Helper"%>
<%
               CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
               List<Product_Category> list = cdao.getCategories();
       
       //GETTING COUNT
       Map<String, Long> m = Helper.getCounts(FactoryProvider.getFactory());
       
               
%>
<%@page import="java.util.List"%>
<%@page import="com.myagroplace.entities.Product_Category"%>
<%@page import="com.myagroplace.dao.CategoryDao"%>
<%@page import="com.myagroplace.helper.FactoryProvider"%>
<%@page import="com.myagroplace.entities.Seller"%>

<%---   PROTECTING THE SELLER PAGE BY USING SESSION   ---%>
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


<%---   SELLER PAGE   ---%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SELLER PAGE</title>
        <%@include file = "components/common_css_js.jsp" %>
        <style>
            body{
                background: #e2e2e2;
            }
        </style>
    </head>
    <body>
        <%@include file = "components/navbar.jsp"%>
        <div class ="container seller">
            <div class="container-fluid mt-3">
                <%@include file = "components/message.jsp"%>
            </div>
            <%-- FIRST ROW --%>
            <div class="row mt-3">
                
                <%-- COLUMN 1 --%>
                <div class="col-md-4">
                    <%-- FIRST BOX --%>
                    <div class="card" data-toggle="tooltip" data-placement="left" title="Number of sellers on this website">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 150px;" class="img-fluid rounded-circle" src="img/seller.png" alt="seller_icon">
                            </div>
                            <h1><%= m.get("sellerCount") %></h1>
                            <h1 class="text-uppercase text-muted">Sellers</h1>
                        </div>
                    </div> 
                </div>
                
                <%-- COLUMN 2 --%>
                <div class="col-md-4">
                    <%-- SECOND BOX --%>
                    <div class="card" data-toggle="tooltip" data-placement="bottom" title="Total categories">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 150px;" class="img-fluid rounded-circle" src="img/categories.png" alt="categories_icon">
                            </div>
                            <h1><%= list.size() %></h1>
                            <h1 class="text-uppercase text-muted">Categories</h1>
                        </div>
                    </div>
                </div>
                
                <%-- COLUMN 3 --%>
                <div class="col-md-4">
                    <%-- THIRD BOX --%>
                    <div class="card" data-toggle="tooltip" data-placement="right" title="Total number of products">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 150px;" class="img-fluid rounded-circle" src="img/products.png" alt="products_icon">
                            </div>
                            <h1><%= m.get("productCount") %></h1>
                            <h1 class="text-uppercase text-muted">Products</h1>
                        </div>
                    </div>
                </div>
                    
            </div>
                    
            <%-- SECOND ROW --%>
            <div class="row mt-3">
                
                <%-- FIRST COLUMN --%>
                <div class="col-md-6">
                    <div class="card" data-toggle="modal" data-target="#addCategory">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 150px;" class="img-fluid rounded-circle" src="img/Add Category.png" alt="add_category_icon">
                            </div>
                            <p class="mt-3">Add new category</p>
                            <h1 class="text-uppercase text-muted">Add Category</h1>
                        </div>
                    </div>
                </div>
                
                <%-- SECOND COLUMN --%>
                <div class="col-md-6">
                    <div class="card" data-toggle="modal" data-target="#add-product-modal">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 150px;" class="img-fluid rounded-circle" src="img/Add Product.png" alt="add_product_icon">
                            </div>
                            <p class="mt-3">Add new product</p>
                            <h1 class="text-uppercase text-muted">Add Product</h1>
                        </div>
                    </div>
                </div>
            </div>
            
            <%-- THIRD ROW --%>
            <div class="row mt-3 mb-3">
                <div class="col-md-12">
                    <div class="card" data-toggle="modal" data-target="#addCategory">
                        <div onclick="window.location='view_products.jsp'" class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 150px;" class="img-fluid rounded-circle" src="img/View.png" alt="add_category_icon">
                            </div>
                            <p class="mt-3">Click to view all the products</p>
                            <h1 class="text-uppercase text-muted">View Products</h1>
                        </div>
                    </div>
                </div>
            </div>
            
            
        </div>
                
        <%--- MODAL TO ADD CATEGORY ---%>
        
        <!-- Modal -->
        <div class="modal fade" id="addCategory" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
              <div class="modal-header custom-bg">
                <h5 class="modal-title" id="exampleModalLabel">Fill Category Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                  
                  <form action="ProductOperationServlet" method="POST">
                      
                      <div class="form-group">
                          <input type="text" class="form-control" id = "categoryTitle" name="categoryTitle" placeholder="Enter category title" required>
                      </div>
                      
                      
                      
              <div class="container text-center">
                 <button type="submit" class="btn btn-outline-success">Add Category</button> 
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              </div>
                      
                  </form>
              </div>
            </div>
          </div>
        </div>
        <%--- END ADD CATEGORY MODAL ---%>
        
        <!-- Add product modal -->
       
<!-- Modal -->
<div class="modal fade" id="add-product-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header custom-bg">
        <h5 class="modal-title" id="exampleModalLabel">Fill Product Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form action="AddProductServlet" method="post" enctype="multipart/form-data">
              
              <div class="form-group">
                          <input type="text" class="form-control" id = "productName" name="productName" placeholder="Enter title of product" required>
                      </div>
               <div class="form-group">
                   <textarea style="height: 150px;" class="form-control" id = "productDescription" name="productDescription" placeholder="Enter product description" required></textarea>
                      </div>
               <div class="form-group">
                          <input type="number" class="form-control" id = "productPrice" name="productPrice" placeholder="Enter price of product" required>
                      </div>
               <div class="form-group">
                          <input type="number" class="form-control" id = "productQuantity" name="productQuantity" placeholder="Enter quantity of product" required>
                      </div>
              
              
              
              <div class="form-group">
                  <select name="catId" class="form-control" id="">
                      <option selected>Select Category</option>
                      <%
                          for(Product_Category c:list){
                      %>
                      <option value="<%=c.getCategoryId()%>"><%=c.getCategoryTitle()%></option>
                      <%
                          }
                      %>
                  </select>
                      </div>
              <div class="form-group">
                  <label for="productPhoto">Select Picture of Product</label>
                  <br>
                          <input type="file" class="form-control" id = "productPhoto" name="productPhoto" required>
                      </div>
              
               <div class="container text-center">
                 <button type="submit" class="btn btn-outline-success">Add Product</button> 
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              </div>
              
          </form>
        
      </div>
    </div>
  </div>
</div>
                  <%@include file = "components/common_modals.jsp" %>
                  <script>
                      $(function () {
                        $('[data-toggle="tooltip"]').tooltip()
                      })
                  </script>
        
    </body>
</html>