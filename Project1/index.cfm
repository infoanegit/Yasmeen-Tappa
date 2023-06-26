<!--- Login page --->
<!DOCTYPE html>
<html lang="en">
<head>
<title>Login Form</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script> 
</head>
 <cfif IsDefined('Form.login')>
        <cfset variables.check = createObject("component","ValidatePassword")>
        <cfset variables.data = variables.check.LoginPassword(#form.email#,#form.password#)>
    </cfif>
    
<body>
    <div class="container mt-4">
        <form action="" name="myForm" method="post" id="myForm" class="needs-validation" novalidate>
            <div class="container">
                <nav class="navbar navbar-expand-sm bg-primary">
                    <div class="container-fluid">
                        <ul class="navbar-nav">
                        <li class="nav-item">
                        <h4 class = "text-white">Welcome to login page!</h4>
                        </li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class="container mt4">
                    <div class="row">
                        <div class="col-sm-4">
                            <h3 align="center">Login Form</h3>                  
                        </div>
                    </div>
                </div>
            <div class="container mt-4">
                <div class="row">
                    <div class="col-sm-6">
                        <label class="form-label">EmailId:</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Enter EmailId" required>
                        <div class="valid-feedback"></div>
                        <div class="invalid-feedback">Please Enter valid EmailId.</div>
                    </div>
                </div>  
            </div>
            <div class="container mt-6">
                <div class="row">
                    <div class="col-sm-6">
                        <label class="form-label">password:</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Enter password" required>
                        <div class="valid-feedback"></div>
                        <div class="invalid-feedback">Please Enter password.</div>
                    </div>
                </div>  
            </div>
            <div class="container mt-4">
                <div class="row">
                    <div class="col-sm-2">
                        <div class="form-group">
                            <a href="http://127.0.0.1:8500/project1/ResetPassword.cfm" class="float-right">Forgot Password?</a>
                        </div>
                    </div>    
                    <div class="col-sm-2">
                            <a href="http://127.0.0.1:8500/project1/EmployeeForm.cfm" class="float-right">Register</a>
                    </div>  
                    <div class= "col-sm-2">
                            <span class="float-end">
                            <input type="submit" id="loginbtn" name="login" value="login" class="btn btn-primary"/>
                    </div>
                </div>
            </div>  
        </form>
    </div>        
</body>
<script>
  // Example starter JavaScript for disabling form submissions if there are invalid fields
  (function () {
    'use strict'
    var forms = document.querySelectorAll('.needs-validation')
    Array.prototype.slice.call(forms)
      .forEach(function (form) {
        form.addEventListener('submit', function (event) {
          if (!form.checkValidity()) {
            event.preventDefault()
            event.stopPropagation()
          }

          form.classList.add('was-validated')
        }, false)
      })
  })()

  <!--- function validate(){
        var username = document.getElementById("username").value;
        var password = document.getElementById("password").value;
    
        console.log(username)
        console.log(password)

        if(username != "" && password != "")
        {
            alert("User Login Successfully")
            return true;

        }  
    }--->
</script>
</html>