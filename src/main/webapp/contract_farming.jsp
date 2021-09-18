
<%@page import="com.myagroplace.entities.Contract"%>
<%@page import="java.util.List"%>
<%@page import="com.myagroplace.dao.ContractDao"%>
<%@page import="com.myagroplace.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contract Farming</title>
        <%@include file = "components/common_css_js.jsp" %>
    </head>
    <style>
        body {
          margin: 0;
          font-family: "Lato", sans-serif;
        }

        .sidebar {
          margin: 0;
          padding: 0;
          width: 200px;
          background-color: #f1f1f1;
          position: fixed;
          height: 100%;
          overflow: auto;
        }

        .sidebar a {
          display: block;
          color: black;
          padding: 16px;
          text-decoration: none;
        }

        .sidebar a.active {
          background-color: #04AA6D;
          color: white;
        }

        .sidebar a:hover:not(.active) {
          background-color: #555;
          color: white;
        }

        div.content {
          margin-left: 200px;
          padding: 1px 16px;
          height: 1000px;
        }

        @media screen and (max-width: 700px) {
          .sidebar {
            width: 100%;
            height: auto;
            position: relative;
          }
          .sidebar a {float: left;}
          div.content {margin-left: 0;}
        }

        @media screen and (max-width: 400px) {
          .sidebar a {
            text-align: center;
            float: none;
          }
        }
    </style>
    <body>
        <%@include file = "components/navbar.jsp"%>
        <!-- The sidebar -->
        <div class="sidebar mt-3">
          <a class="active" href="#info">Information</a>
          <a href="#offers">Contract Offers</a>
          <a href="#addContract">Publish Offer</a>
          <a href="#about">About</a>
        </div>

        <!-- Page content -->
        <div class="content">
            <!--- Heading --->
            <h1 style="font-size:100px; color:#996600"><center><b>Welcome to Contract Farming Page</b></center></h1>
            
            <a name="info">
            <hr style="border: 10px solid mediumseagreen; border-radius: 5px;">
            
            <!--- Contract Farming --->
            <h2 style="font-size:50px; color:#996600">Contract Farming</h2>
            <p style="font-size:25px; color: black; font-family: cursive" >Contract farming can be defined as agricultural production carried out according to an agreement between a buyer and farmers, which establishes conditions for the production and marketing of a farm product or products. Typically, the farmer agrees to provide agreed quantities of a specific agricultural product. These should meet the quality standards of the purchaser and be supplied at the time determined by the purchaser. In turn, the buyer commits to purchase the product and, in some cases, to support production through, for example, the supply of farm inputs, land preparation and the provision of technical advice.</p>
            
            <hr style="border: 5px solid mediumseagreen; border-radius: 5px;">
            
            
            <!--- Advantages of Contract Farming --->
            <h2 style="font-size:50px; color:#996600">Advantages of Contract Farming</h2>
            <style>
                #rcorners3 {
                    border-radius: 15px 50px 30px;;
                    background: #008B8B;
                    background-position: left top;
                    background-repeat: repeat;
                    padding: 40px;
                    width: 350px;
                    height: 250px;
                  }
                #rcorners4 {
                    border-radius: 15px 50px 30px;;
                    background: #708090;
                    background-position: left top;
                    background-repeat: repeat;
                    padding: 40px;
                    width: 350px;
                    height: 100px;
                  }
                #rcorners5 {
                    border-radius: 15px 50px 30px;;
                    background: #800080;
                    background-position: left top;
                    background-repeat: repeat;
                    padding: 40px;
                    width: 800px;
                    height: 200px;
                  }  
            </style>
                <div class="container mt-5">
                    <div class="row">
                      <div class="col-sm text-white">
                          <p id="rcorners3" style="font-size: 19px;">Makes small scale farming competitive - small farmers can access technology, credit, marketing channels and information while lowering transaction costs.</p>
                      </div>
                      <div class="col-sm text-white">
                        <p id="rcorners3" style="font-size: 19px;">Assured market for their produce at their doorsteps, reducing marketing and transaction costs.</p>
                      </div>
                      <div class="col-sm text-white">
                        <p id="rcorners3" style="font-size: 19px;">It reduces the risk of production, price and marketing costs.</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm text-white">
                          <p id="rcorners3" style="font-size: 19px;">In case of agri-processing level, it ensures consistent supply of agricultural produce with quality, at right time and lesser cost.</p>
                      </div>
                      <div class="col-sm text-white">
                        <p id="rcorners3" style="font-size: 19px;">Contract farming can open up new markets which would otherwise be unavailable to small farmers.</p>
                      </div>
                      <div class="col-sm text-white">
                        <p id="rcorners3" style="font-size: 19px;">It also ensures higher production of better quality, financial support in cash and /or kind and technical guidance to the farmers.</p>
                      </div>
                    </div>
                </div>
            </a>
            
            <hr style="border: 5px solid mediumseagreen; border-radius: 5px;">
            
            
            
            <!--- DISPLAY CONTRACTS --->
            <a name="offers"><h1 style="font-size:60px; color:#996600"><center><b>Contract Offers</b></center></h1></a>
            <%
                        //FETCHING CONTRACTS
                        ContractDao dao = new ContractDao(FactoryProvider.getFactory());
                        List<Contract> list = dao.getAllContracts();
                        list = dao.getAllContracts();
            %>
            <%
                        for(Contract c:list){
            %>
            
                                    <div class="card mt-5">
                                        
                                        <div class="card-body" style="background-color: aliceblue">
                                            <h2><center>Contract <%=c.getContractId()%></center></h2>
                                            <div class="container mt-5">
                                                <div class="row">
                                                  <div class="col-sm text-white">
                                                    <h3 id="rcorners4" style="font-size: 19px;">Crop: <%=c.getCrop()%></h3>
                                                  </div>
                                                  <div class="col-sm text-white">
                                                    <h3 id="rcorners4" style="font-size: 19px;">Land Require (Hectares): <%=c.getLand()%></h3>
                                                  </div>
                                                  <div class="col-sm text-white">
                                                      <h3 id="rcorners4" style="font-size: 19px;">Crop Rate: ₹<%=c.getCropRate()%>/quintal</h3>
                                                  </div>
                                                </div>
                                                <div class="row">
                                                  <div class="col-sm text-white">
                                                    <h3 id="rcorners4" style="font-size: 19px;">Contractor Name: <%= c.getContractor_Name() %></h3>
                                                  </div>  
                                                  <div class="col-sm text-white">
                                                      <h3 id="rcorners4" style="font-size: 19px;">Mobile: <%=c.getContractor_mobNo()%></h3>
                                                  </div>
                                                  <div class="col-sm text-white">
                                                    <h3 id="rcorners4" style="font-size: 19px;">Address: <%=c.getContractor_Address()%></h3>
                                                  </div>
                                                </div>
                                                <div>
                                                    <center>
                                                    <div class="col-sm text-white">
                                                        <h3 id="rcorners5" style="font-size: 19px;">Contract Description:<br><%=c.getContractDescription()%></h3>
                                                    </div>
                                                    </center>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="card-footer" style="background-color: powderblue">
                                            <button class="btn custom-bg text-white"><%=c.getContractor_Name()%></button>
                                            <button class="btn btn-outline-primary">₹ <%=c.getCropRate()%>/quintal</button>
                                        </div>
                                    </div>
            
            <%
                }
            %>     
             
            <br><br>
            <hr style="border: 5px solid mediumseagreen; border-radius: 5px;">
            <br><br>
            
            
            
            
            
            <!--- ADD CONTRACT --->
            <a name="addContract">
                <div class="container-fluid">
                    <div class = "col-md-5 offset-md-4">
                        <div class="card my-3" style="background-color: lightcyan">
                            <%@include file = "components/message.jsp"%>
                            <div class="card-body px-5">
                                <h2 class = "text-center my-3">Add Contract!!</h2>
                                <form action = "ContractServlet" method = "post">
                                    <div class="mb-3">
                                        <label for="name">Full Name</label>
                                        <input name="contractor_Name" type="text" class="form-control" id="name" placeholder="Enter Contractor's name">
                                    </div>
                                    <div class="mb-3">
                                        <label for="address">Address</label>
                                        <textarea name="contractor_Address" style="height:100pix;" class="form-control" placeholder="Enter Contractor's address"></textarea>
                                    </div>
                                    <div class="mb-3">
                                        <label for="mobile number">Mobile Number</label>
                                        <input name="contractor_mobNo" type="number" class="form-control" id="mobile number" placeholder="Enter Contractor's mobile number">
                                    </div>
                                    <div class="mb-3">
                                        <label for="crop">Crop</label>
                                        <input name="crop" type="text" class="form-control" id="crop" placeholder="Enter crop for contract">
                                    </div>
                                    <div class="mb-3">
                                        <label for="land">Land</label>
                                        <input name="land" type="number" class="form-control" id="land" placeholder="Enter land in hectares">
                                    </div>
                                    <div class="mb-3">
                                        <label for="cropRate">Crop Rate</label>
                                        <input name="cropRate" type="number" class="form-control" id="cropRate" placeholder="Enter crop rate(per quintal)">
                                    </div>
                                    <div class="mb-3">
                                        <label for="address">Description</label>
                                        <textarea name="contractDescription" style="height:100pix;" class="form-control" placeholder="Enter contract description"></textarea>
                                    </div>
                                    <div class="container text-center">
                                        <button class="btn btn-outline-success">Add Contract</button>
                                        <button class="btn btn-outline-warning">Reset</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
               </div>
            </a>
            
            <br><br><br><br>
        </div>
    </body>
</html>
