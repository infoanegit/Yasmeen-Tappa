<!DOCTYPE html>
<html lang="en">
<head>
<title>Employee Registration Form</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script> 
</head>

    <cfif IsDefined('URL.id')>
        <cfset variables.insert = createObject("component","ValidatePassword")>
        <cfset variables.data = variables.insert.selectdata(EmpId = #URL.id#)>
    </cfif>
 
    <cfif IsDefined('Form.submit')>
        <cfset variables.insert = createObject("component","ValidatePassword")>
        <cfset variables.data = variables.insert.userInfo(firstname = #form.fname#, lastname = #form.lname#, emailId = #form.email#, Password = #form.password#, Dateofbirth = #form.dob#, Phonenumber = #form.phnnum#, Address1 = #form.addr1#, Address2 = #form.addr2#, City = #form.city#, State = #form.state#, Zipcode = #form.zipcode#, Department = #form.department#)>
    </cfif>
<body>
 <div class="container mt-3">
    <form action="" name="myForm" method="post" id="myForm" class="needs-validation" novalidate>
        <div class="container mt4">
            <div class="row">
                <div class="col-sm-8">
                     <h3 align="center">Employee Registration Form</h3>                  
                </div>
            </div>
        </div>        
        <div class="container mt-4">
            <div class="row">
                <div class="col-sm-4">
                    <p>Full name</p>
                    <input type="Firstname" class="form-control" id="fname" name="fname" required>
                    <label class="form-label">First Name</label>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback">Please Enter first name.</div>
                </div>

                <div class="col-sm-4">
                    <p>&nbsp;</p>
                    <input type="Lastname"class="form-control" id="lname" name="lname" required>
                    <label class="form-label">Last Name</label>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback"> Please Enter Last name.</div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <p>Email</p>
                    <input type="Email" class="form-control" id="email" name="email" required>
                    <label class="form-label">example@example.com</label>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback">Please Enter valid Email.</div>
                </div>    
                <div class="col-sm-4">
                    <p>Password</p>   
                    <input type="Password" class="form-control" id="password" name="password" required>
                    <label class="form-label">example a number (0-9) and/or symbol (such as !, #, or %)</label>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback"> Please Enter Password.</div>
                </div> 
            </div>
        
            <div class="row mt-3" >
                <div class="col-sm-2">
                    <p>Date Of Birth</p>
                    <input type="Date" class="form-control" id="dob" name="dob" required>
                    <label class="form-label">Date</label>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback"> Please Enter date of birth.</div>
                </div>
                <div class="col-sm-3">
                    <p>Phone Number</p>
                    <input type="phn"class="form-control" id="phnnum" name="phnnum" required>
                    <label class="form-label">please enter a valid phone number</label>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback"> Please Enter Phone number.</div>
               </div>
                <div class="col-sm-3">  
                    <p>Department</p>
                     <div class="form-group">
                    <select  class="form-control" id="dept" name="department">
                    <option value="Admin">Admin</option>
                    <option value="User">User</option>
                    </select>
                    <label class="form-label">Select Department</label>
                </div>
            </div>

            <div class="row mt-3" >
                <div class="col-sm-8">
                    <p>Address</p>
                    <input type="Address" class="form-control" id="addr1" name="addr1" required>
                    <label class="form-label">street address</label>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback"> Please Enter street Address line 1.</div>
                </div>
            </div>  

            <div class="row mt-3" >
                <div class="col-sm-8">
                    <input type="Address" class="form-control" id="addr2" name="addr2" required>
                    <label class="form-label">street address line2</label>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback"> Please Enter street Address line 2.</div>
                </div>
            </div> 

            <div class="row mt-3" >
                <div class="col-sm-4">
                    <input type="city" class="form-control" id="city" name="city" required>
                    <label class="form-label">city</label>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback"> Please Enter city.</div>
                </div>
                <div class="col-sm-4">
                    <input type="State"class="form-control" id="state" name="state" required>
                    <label class="form-label">state/province</label>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback"> Please Enter state.</div>
               </div>
            </div>   

            <div class="row mt-3" >
                <div class="col-sm-8">
                    <input type="Zipcode" class="form-control" id="zipcode" name="zipcode" required>
                    <label class="form-label">postal/zipcode</label>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback"> Please Enter Zipcode.</div>
                </div>
            </div>   

            <div class="row mt-3">
                <div class= "col-sm-8">
                        <span class="float-end">
                    <!---<a  href="http://127.0.0.1:8500/Amazonpage.cfm">--->
                    <input type="submit" id="submitbtn" name="submit" value="Submit" class="btn btn-primary" onsubmit="return validateEmail(email);"/>
                    <!---<button type="submit"  class="btn btn-primary" value="submit"><a  href="http://127.0.0.1:8500/Amazonpage.cfm">Submit</a></button>--->
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

    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.querySelectorAll('.needs-validation')

    // Loop over them and prevent submission
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


<!---<cfset Component = CreateObject("Component","ValidatePassword")>
<cfset result = Component.Password(email, password)>
<cfinvoke method="Password" returnvariable="result"></cfinvoke>--->

<!---<cfquery name="abc" datasource="DemoTwo">
    SELECT COUNT(*) AS emailCount
    FROM Employee
    WHERE EmailId = <cfqueryparam value="#form.email#" cfsqltype="CF_SQL_VARCHAR">
</cfquery>
<cfoutput>#checkEmailQuery.emailCount#</cfoutput>--->


<!---<cfelseif IsDefined('Form.submit')>    

        <cfset variables.info = createObject("component","NewProject\CFC\userDetails")>

        <cfset variables.data = variables.info.userInfo(#form.fname#,#form.mname#,#form.lname#,#form.dateOfBirth#,#form.gender#,#form.bloodGroup#,#form.maritalStatus#,#form.email#,#form.mobile#,#form.doj#,#form.selectedFor#,#form.department#,#form.salary#)>

        <cflocation url="edit.cfm" addtoken="false" statusCode="301">--->