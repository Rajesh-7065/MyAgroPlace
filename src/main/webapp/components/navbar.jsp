<%@page import="com.myagroplace.entities.Seller"%>
<%
    Seller seller1 = (Seller)session.getAttribute("current_seller");
%>

<nav class="navbar navbar-expand-lg navbar-light custom-bg">
    <div class = "container">
        <a class="navbar-brand" href="index.jsp" align="left"><b>MyAgroPlace</b></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item active">
                        <a class="nav-link" aria-current="page" href="index.jsp">Home</a>
                    </li>
   
                    <li class="nav-item active">
                        <a class="nav-link " aria-current="page"  href="organic farming.jsp">
                            Organic Farming
                        </a>
                       
                    </li>
                    
                    <li class="nav-item active">
                        <a class="nav-link " aria-current="page"  href="contract_farming.jsp">
                            Contract Farming
                        </a>
                       
                    </li>
    
                </ul>
  
                <ul class = "navbar-nav ml-auto">
                    <li class="nav-item active"><a class="nav-link" href="#!" data-toggle="modal" data-target="#cart"><i class="fa fa-cart-plus" style="font-size: 30px;" style="font-size: 20px"></i><span class="ml-0 cart-items">(0)</span></a></li>
                    <%
                        if(seller1 == null)
                        {
                    %>
                            <li class="nav-item active"><a class="nav-link" href="sellerLogin.jsp">Seller Login</a></li>
                            <li class="nav-item active"><a class="nav-link" href="registerSeller.jsp">Register as Seller</a></li>
                    <%
                        }
                        else
                        {
                    %>
                            <li class="nav-item active"><a class="nav-link" href="seller.jsp"><%= seller1.getSellerName()%></a></li>
                            <li class="nav-item active"><a class="nav-link" href="SellerLogoutServlet">Logout</a></li>
                    <%
                        }
                    %>
                </ul>
            </div>
    </div>
</nav>