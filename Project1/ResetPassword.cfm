<!DOCTYPE html>
<html lang="en">
<head>
<title>Login Form</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script> 
</head>
</head>

<!---<cfset variables.check = createObject("component","ValidatePassword")> 
    <cfset variables.data = variables.check.resetpassword()>--->

    <cfif IsDefined('form.submit')>
        <cfset variables.check = createObject("component","ValidatePassword")>
        <cfset variables.data = variables.check.resetpassword( emailId = #form.EmailId# ,Password = #form.newpwd#)>
        <!---<cfoutput>
            <script>
                alert("Password Change Successfully")
            </script>
        </cfoutput>--->
</cfif>
<body> 
    <div class="container mt-4">
        <form action="" name="myForm" method="post" id="myForm" class="needs-validation" novalidate>
            <div class="container mt4">
                <div class="row">
                    <div class="col-sm-4">
                        <nav class="navbar-expand-sm bg-primary">
                            <div class="container-fluid ">
                                <ul class="navbar-nav justify-content-end">
                                    <li class="nav-item">
                                        <a class="nav-link" href="http://127.0.0.1:8500/project1/">
                                            <button type="button" id="logoutbtn" name="logout" value="logout" class="btn btn-primary" >logout</button>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="container mt4">
                    <div class="row">
                        <div class="col-sm-4">
                            <h3 align="center">Password Reset Form</h3>                  
                        </div>
                    </div>
            </div>
            <div class="container mt-4">
                <div class="row">
                    <div class="col-sm-4">
                        <label class="form-label">EmailId:</label>
                        <input type="emailid" class="form-control" id="user" name="EmailId" placeholder="Enter User Name" required>
                        <div class="invalid-feedback">Please Enter User EmailId.</div>
                    </div>
                </div>
            </div>    
             <div class="container mt-4">
                <div class="row">
                    <div class="col-sm-4">
                        <label class="form-label">Enter new password:</label>
                        <input type="newpwd" class="form-control" id="newpwd" name="newpwd" placeholder="Enter new password" required>
                        <div class="invalid-feedback">Please Enter new password.</div>
                    </div>
                </div>
            </div>     
            <div class="container mt-4">
                <div class="row">
                    <div class="col-sm-4">
                        <label class="form-label">Confirm new password:</label>
                        <input type="cnewpwd" class="form-control" id="cnewpwd" name="cnewpwd" placeholder="Re-Enter the new password" required>
                        <div class="invalid-feedback">Please Confirm New Password.</div>
                    </div>
                </div> 
            </div> 
            <div class="container mt-4">
                <div class="row">
                    <div class="col-sm-2">
                        <button type="submit" name="submit"><a>Save</a></button>&nbsp;
                        <input type="reset" value="Cancel">
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
  </script>
</html>























<!---<form role="form" method="post">
    <div class="box box-primary">
        <div class="box-header">
            <h2 class="page-header"><i class="fa fa-lock"></i> Change Password</h2>
            <div class="pull-right">
                <button type="button" name="Submit" value="Save" class="btn btn-danger"><i class="livicon" data-n="pen" data-s="16" data-c="#fff" data-hc="0" ></i> Save</button>
                <button type="reset" name="Reset" value="Clear" class="btn btn-primary"><i class="livicon" data-n="trash" data-s="16" data-c="#fff" data-hc="0"></i> Clear</button>
            </div>
        </div>
        <!-- /.box-header -->

        <div class="box-body">
            <div class="row">
                <div class="col-xs-12 col-sm-3 col-md-3">
                    <label>Old Password</label>
                </div>
                <div class="col-xs-12 col-sm-3 col-md-3">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="fa fa-lock"></i>
                        </div>
                        <input class="form-control" id="oldPassword" name="oldPassword" value="" placeholder="Enter the Old Password" type="password">
                    </div>
                </div>
                <!-- /.input group -->
            </div>
            <br/>
            <div class="row">
                <div class="col-xs-12 col-sm-3 col-md-3">
                    <label>New Password</label>
                </div>
                <div class="col-xs-12 col-sm-3 col-md-3">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="fa fa-lock"></i>
                        </div>
                        <input class="form-control" id="newPassword" name="newPassword" value="" placeholder="Enter the New Password" type="password">
                    </div>
                </div>
                <!-- /.input group -->
            </div>
            <br/>
            <div class="row">
                <div class="col-xs-12 col-sm-3 col-md-3">
                    <label>Confirm Password</label>
                </div>
                <div class="col-xs-12 col-sm-3 col-md-3">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="fa fa-lock"></i>
                        </div>
                        <input class="form-control" id="confirmPassword" name="confirmPassword" value="" placeholder="Re-enter the New Password" type="password">
                    </div>
                </div>
                <!-- /.input group -->
            </div>
</form> --->

