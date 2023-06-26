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
        <cfset variables.update = createObject("component","ValidatePassword")>
        <cfset variables.udata = variables.update.updateEmpInfo(EmpId = #URL.id#, firstname = #form.fname#,lastname = #form.lname#, emailId = #form.email#, Password = #form.password#, Dateofbirth = #form.dob#, Phonenumber = #form.phnnum#, Address1 = #form.addr1#, Address2 = #form.addr2#, City = #form.city#, State = #form.state#, Zipcode = #form.zipcode#, Department = #form.department#)>
</cfif>
<!--- <cfdump var = "#variables.data#"> --->
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
                <div class="col-sm-2">
                    <p>Date Of Birth</p>
                    <input type="Date" class="form-control" id="dob" name="dob" value=<cfoutput>"#variables.data.DOB#"</cfoutput> required>
                    <label class="form-label">Date</label>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback"> Please Enter date of birth.</div>
                </div>
                <div class="col-sm-3">
                    <p>Phone Number</p>
                    <input type="phn"class="form-control" id="phnnum" name="phnnum" value=<cfoutput>"#variables.data.Phonenum#"</cfoutput> required>
                    <label class="form-label">please enter a valid phone number</label>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback"> Please Enter Phone number.</div>
               </div>
                <div class="col-sm-3">  
                    <p>Department</p>
                    <div class="form-group">
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
                    <input type="submit" id="submitbtn" name="submit" value="Submit" class="btn btn-primary"/>
                 </div>
            </div>        
        </div>
    </form>
 </div>   
</body>
</html>


