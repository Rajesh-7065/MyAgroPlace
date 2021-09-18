
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New User</title>
        <%@include file = "components/common_css_js.jsp"%>
    </head>
    <body>
        <%@include file = "components/navbar.jsp"%>
        <div class="container-fluid">
             <div class = "col-md-4 offset-md-4">
            <div class="card my-3">
                <%@include file = "components/message.jsp"%>
                <div class="card-body px-5">
                    <h2 class = "text-center my-3">Register here!!</h2>
                    <form action = "SellerRegisterServlet" method = "post">
                        <div class="mb-3">
                            <label for="name">Full Name</label>
                            <input name="sname" type="text" class="form-control" id="name" placeholder="Enter name" aria-describedby="emailHelp">
                        </div>
                        <div class="mb-3">
                            <label for="gender">Gender</label>
                            <input name="sgender" type="text" class="form-control" id="gender" placeholder="Male/Female or Other" aria-describedby="emailHelp">
                        </div>
                        <div class="mb-3">
                            <label for="address">Address</label>
                            <textarea name="saddress" style="height:100pix;" class="form-control" placeholder="Enter address"></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="pincode">Pin code</label>
                            <input name="spincode" type="number" class="form-control" id="pincode" placeholder="Enter pincode" aria-describedby="emailHelp">
                        </div>
                        <div class="mb-3">
                            <label for="mobile number">Mobile Number</label>
                            <input name="smobile" type="number" class="form-control" id="mobile number" placeholder="Enter mobile number" aria-describedby="emailHelp">
                        </div>
                        <div class="mb-3">
                            <label for="email">Email Address</label>
                            <input name="semail" type="email" class="form-control" id="email" placeholder="Enter email" aria-describedby="emailHelp">
                        </div>
                        <div class="mb-3">
                            <label for="username">Username</label>
                            <input name="susername" type="username" class="form-control" id="username" placeholder="Enter username" aria-describedby="emailHelp">
                        </div>
                        <div class="mb-3">
                            <label for="password">Password</label>
                            <input name="spassword" type="password" class="form-control" id="password" placeholder="Enter password" aria-describedby="emailHelp">
                        </div>
                        <div class="container text-center">
                            <button class="btn btn-outline-success">Register</button>
                            <button class="btn btn-outline-warning">Reset</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        </div>
    </body>
</html>
