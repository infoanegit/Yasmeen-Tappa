<!DOCTYPE html>
<html lang="en">
<head>
<title>Employee Registration Form</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

    <script>
    $(document).ready(function() {
      // Function to show the Bootstrap modal
      function showModal() {
        $('#messageModal').modal('show');
      }

      // Call the function to show the modal when a button is clicked
      $('#submit').on('click', function() {
        showModal();
      });
    });
</script>
</head>

<cfif IsDefined('URL.id')>
        <cfset variables.insert = createObject("component","ValidatePassword")>
        <cfset variables.data = variables.insert.selectdata(EmpId = #URL.id#)>
</cfif>
<cfif IsDefined('Form.submit')>
        <cfset variables.update = createObject("component","ValidatePassword")>
        <cfset variables.udata = variables.update.updateEmpInfo(EmpId = #URL.id#, firstname = #form.fname#,lastname = #form.lname#, emailId = #form.email#, Password = #form.password#, Dateofbirth = #form.dob#, Phonenumber = #form.phnnum#, Address1 = #form.addr1#, Address2 = #form.addr2#, City = #form.city#, State = #form.state#, Zipcode = #form.zipcode#, Department = #form.department#)>
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
                    <input type="Firstname" class="form-control" id="fname" name="fname" value=<cfoutput>"#variables.data.firstname#"</cfoutput> required>
                    <label class="form-label">First Name</label>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback">Please Enter first name.</div>
                </div>

                <div class="col-sm-4">
                    <p>&nbsp;</p>
                    <input type="Lastname"class="form-control" id="lname" name="lname"  value=<cfoutput>"#variables.data.lastname#"</cfoutput> required>
                    <label class="form-label">Last Name</label>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback"> Please Enter Last name.</div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 employee-field d-none">
                    <p>Email</p>
                    <input type="Email" class="form-control" id="email" name="email" value=<cfoutput>"#variables.data.emailId#"</cfoutput> required>
                    <label class="form-label">example@example.com</label>
                    <div class="valid-feedback"></div>
                    <div >Please Enter valid Email.</div>
                </div>    
                <div class="col-sm-4 employee-field d-none">
                    <p>Password</p>   
                    <input type="Password" class="form-control" id="password" name="password" value=<cfoutput>"#variables.data.Password#"</cfoutput> required>
                    <label class="form-label">example a number (0-9) and/or symbol (such as !, #, or %)</label>
                    <div class="valid-feedback"></div>
                    <div> Please Enter Password.</div>
                </div> 
            </div>
        
            <div class="row mt-3" >
                <div class="col-sm-4">
                    <p>Date Of Birth</p>
                    <input type="Date" class="form-control" id="dob" name="dob" value=<cfoutput>"#variables.data.DOB#"</cfoutput> required>
                    <label class="form-label">Date</label>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback"> Please Enter date of birth.</div>
                </div>
                <div class="col-sm-4">
                    <p>Phone Number</p>
                    <input type="phn"class="form-control" id="phnnum" name="phnnum" value=<cfoutput>"#variables.data.Phonenum#"</cfoutput> required>
                    <label class="form-label">please enter a valid phone number</label>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback"> Please Enter Phone number.</div>
               </div>
                <div class="col-sm-3 d-none">  
                    <p>Department</p>
                    <div class="form-group ">
                    <select  class="form-control" id="dept" name="department" value=<cfoutput>"#variables.data.is_admin#"</cfoutput> required>
                    <option value="Admin">Admin</option>
                    <option value="User">User</option>
                    </select>
                    <label class="form-label">Select Department</label>
                </div>
            </div>

            <div class="row mt-3" >
                <div class="col-sm-8">
                    <p>Address</p>
                    <input type="Address" class="form-control" id="addr1" name="addr1" value=<cfoutput>"#variables.data.Address1#"</cfoutput> required>
                    <label class="form-label">street address</label>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback"> Please Enter street Address line 1.</div>
                </div>
            </div>  

            <div class="row mt-3" >
                <div class="col-sm-8">
                    <input type="Address" class="form-control" id="addr2" name="addr2" value=<cfoutput>"#variables.data.Address2#"</cfoutput> required>
                    <label class="form-label">street address line2</label>
                    <div class="valid-feedback"></div>
                    <div> Please Enter street Address line 2.</div>
                </div>
            </div> 

            <div class="row mt-3" >
                <div class="col-sm-4">
                    <input type="city" class="form-control" id="city" name="city" value=<cfoutput>"#variables.data.City#"</cfoutput> required>
                    <label class="form-label">city</label>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback"> Please Enter city.</div>
                </div>
                <div class="col-sm-4">
                    <input type="State"class="form-control" id="state" name="state" value=<cfoutput>"#variables.data.State#"</cfoutput> required>
                    <label class="form-label">state/province</label>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback"> Please Enter state.</div>
               </div>
            </div>   

            <div class="row mt-3" >
                <div class="col-sm-8">
                    <input type="Zipcode" class="form-control" id="zipcode" name="zipcode" value=<cfoutput>"#variables.data.Zipcode#"</cfoutput> required>
                    <label class="form-label">postal/zipcode</label>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback"> Please Enter Zipcode.</div>
                </div>
            </div> 
            <div class="row mt-3">
                    <div class= "col-sm-8">
                        <span class="float-end">
                        <input type="submit" id="submit" name="submit" value="Update" class="btn btn-primary">
                    </div>
            </div>  
           
            <!-- Button trigger modal -->
            <!---<div class="row mt-3">
                    <div class= "col-sm-8">
                        <span class="float-end">
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#messageModal">
                            Show Message
                        </button>
                 </div>
            </div>  --->

                <!-- Modal -->
                <div class="modal fade" id="messageModal" tabindex="-1" role="dialog" aria-labelledby="messageModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="messageModalLabel">Message Title</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <p>Data Update Successfully.</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
                                 <button type="button" class="btn btn-primary" data-dismiss="modal">OK</button>
                            </div>
                        </div>
                    </div>
                </div>
   </form>
</div>   
</body>
</html>


