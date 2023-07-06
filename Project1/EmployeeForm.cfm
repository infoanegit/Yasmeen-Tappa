<!DOCTYPE html>
<html lang="en">
<head>
<title>Employee Registration Form</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>

    <cfif IsDefined('URL.id')>
        <cfset variables.insert = createObject("component","ValidatePassword")>
        <cfset variables.data = variables.insert.selectdata(EmpId = #URL.id#)>
    </cfif>
 
    <cfif IsDefined('Form.submit')>
        <cfset variables.insert = createObject("component","ValidatePassword")>
        <cfset variables.data = variables.insert.userInfo(firstname = #form.fname#, lastname = #form.lname#, emailId = #form.email#, Password = #form.password#, Dateofbirth = #form.dob#, Phonenumber = #form.phnnum#, Address1 = #form.addr1#, Address2 = #form.addr2#, City = #form.city#, State = #form.state#, Zipcode = #form.zipcode#, Department = #form.department#)>
    <cfdump var ="# variables.data #" >
    <cfif variables.data EQ 1 >
    <cfoutput>
        <script>   
            function showModal() {
                $('##messageModal').modal('show');
            }
        </script>
    </cfoutput>
    </cfif>
     
    </cfif>

<!---Script for modal--->


<body>
 <div class="container mt-3">
    <form action="" name="myForm" method="post" id="myForm" class="needs-validation" novalidate>
        <div class="container mt-4">
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
                    <input type="submit" id="submitbtn" name="submit" value="Submit" class="btn btn-primary"/>
                </div>
            </div>        
        </div>
             <!-- Modal -->
                <!-- Button trigger modal -->
                <!---<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#messageModal">
                Show Message
                </button>--->

              <!-- Modal -->
                <div class="modal" id="messageModal">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Modal Heading</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <p>Data Insert Successfully.</p>
                            </div>

                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Cancel</button>
                                <button type="button" class="btn btn-primary" data-bs-dismiss="modal">OK</button>
                            </div>

                        </div>
                    </div>
                </div>
    </form>
 </div> 
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