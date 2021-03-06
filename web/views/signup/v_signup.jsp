<%-- 
    Document   : signup
    Created on : May 3, 2019, 10:46:03 PM
    Author     : KHANG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="public/css/bootstrap.css">
        <link rel="stylesheet" href="public/css/signup.css">
    </head>
    <body>
               <%
        String username_err="",password_err="",email_err="";
    if(request.getAttribute("username_err")!=null){
    username_err=(String) request.getAttribute("username_err");}
    if(request.getAttribute("password_err")!=null){
    username_err=(String) request.getAttribute("password_err");}
    if(request.getAttribute("email_err")!=null){
    username_err=(String) request.getAttribute("email_err");
}
%>
        <div class="container">
            <div class="row">
                <div class="col-md-5 mx-auto lform">
                    <div class="top-bar">
                        <div class="logo-pic">
                            <img src="public/images/logo.png">
                        </div>
                    </div>
                    <div class="myform">
                        <div class="logo mb-3">
                            <div class="col-md-12 text-center">
                                <h1>Sign up for Banana</h1>
                            </div>
                        </div>
                        <form method="post" action ="user">
                            <div class="form-group">
                                <lable for="username">User name:</lable>
                                <input type="username" class="form-control" name="username" id="username">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Password:</label>
                                <input type="password" class="form-control" name="password" id="pwd" onkeyup="check()">
                            </div>
                            <div class="form-group">
                                <label for="confirmpwd">Confirm password:</label>
                                <input type="password" class="form-control"  name="confirmpwd" id="confirmpwd" onkeyup="check()">
                            </div>
                            <div class="cointainer">
                                <span id="fail-feedback"></span>
                            </div>
                            <div class="form-group">
                                <label for="email">Email:</label>
                                <input type="email" class="form-control" name="email" id="email">
                            </div>
                            <div class="col-md-12 text-center ">
                                <button type="submit" class="btn btn-block btn-primary" name="command" value="REGISTER">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script>
            function check(){
                if (document.getElementById('pwd').value ==
    document.getElementById('confirmpwd').value) {
    document.getElementById('fail-feedback').style.color = 'green';
    document.getElementById('fail-feedback').innerHTML = 'matching';
  } else {
    document.getElementById('fail-feedback').style.color = 'red';
    document.getElementById('fail-feedback').innerHTML = 'not matching';
  }
            }
        </script>
    </body>
</html>
