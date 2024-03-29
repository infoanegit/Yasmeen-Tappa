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
<!---  <cfdump var="#url#">  --->
<cfparam  name="url.active" default="">
<cfparam  name="url.inActive" default="">
    <cfset variables.check = createObject("component","ValidatePassword")>

    <cfif url.active EQ 1> 
        <cfset variables.mydata = variables.check.getEmpdetails()>
    <cfelseif url.inActive EQ 0>
        <cfset variables.mydata = variables.check.displayRecords()>
    <cfelse>   
    <cfset variables.mydata = variables.check.getEmpdetails()> 
    </cfif>
<!---<cfdump var ="#mydata.Firstname#">--->
<body>
    <form action="" name="myForm" method="post" id="myForm">
        <div class="container">
            <nav class="navbar navbar-expand-sm bg-primary justify-content-around text-white">
                 <div>
                    <cfoutput>#variables.mydata.Firstname# Login Successfully!</cfoutput>
                </div>
                    <div class="dropdown">
                        <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">
                        Account Details
                        </button>
                        <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="http://127.0.0.1:8500/Yasmeen-Tappa/Project1/EmployeeViewPage.cfm?active=1">Active Accounts</a></li>
                        <li><a class="dropdown-item" href="http://127.0.0.1:8500/Yasmeen-Tappa/Project1/EmployeeViewPage.cfm?inActive=0">In-Active Accounts</a></li>
                        </ul>
                    </div>
                     <ul class="navbar-nav">
                        <li class="nav-item">
                            <span class="float-end">
                            <cfif session.user EQ "Admin">
                                <a class="nav-link" href="http://127.0.0.1:8500//Yasmeen-Tappa/Project1/EmployeeForm.cfm">
                                    <button type="button" id="addbtn" name="addbtn" value="addbtn" class="btn btn-primary" >Add New User </button>
                                </a>
                            <cfelse>
                                <a class="nav-link" href="http://127.0.0.1:8500//Yasmeen-Tappa/Project1/EmployeeForm.cfm">
                            </cfif>
                        </li>
                    </ul>
                      <ul class="navbar-nav">
                        <li class="nav-item">
                            <span class="float-end">
                            <a class="nav-link" href="http://127.0.0.1:8500//Yasmeen-Tappa/Project1/">
                                <button type="button" id="logoutbtn" name="logout" value="logout" class="btn btn-primary" >logout</button>
                            </a>
                        </li>
                    </ul>
            </nav>
        </div>
           <div class="container">
                <h1 align="center">Employee Details</h1><br>

                <div class="card-body">
                    <table class="table">
                        <thead>
                            <tr>
                            <th scope="col">First Nmae</th>
                            <th scope="col">Last Name</th>
                            <th scope="col">Date Of Birth</th>
                            <th scope="col">Address1</th>
                            <th scope="col">Address2</th>
                            <th scope="col">City</th>
                            <th scope="col">State</th>
                            <th scope="col">ZipCode</th>
                            <th scope="col">Actions</th>
                            </tr>
                        </thead>
                            <tbody>
                                <cfoutput query="mydata">
                                        <tr>
                                        <td>#myData.Firstname#</td>
                                        <td>#myData.Lastname#</td> 
                                        <td>#myData.DOB#</td>
                                        <td>#myData.Address1#</td>
                                        <td>#myData.Address2#</td>
                                        <td>#myData.City#</td>
                                        <td>#myData.State#</td>
                                        <td>#myData.ZipCode#</td>
                                        <td>
                                        <cfif url.inActive EQ 0 ><cfelse><a href="EmployeeEdit.cfm?id=#myData.EmpId#">Edit</a></cfif>
                                        <cfif url.inActive EQ 0><cfelseif session.user EQ "Admin" ><a href="EmployeeEdit.cfm?id=#myData.EmpId#">Delete</a></cfif>
                                        <!---<cfif url.inActive EQ 0 >
                                        <cfelse><a href="EmployeeEdit.cfm?id=#myData.EmpId#">Edit</a></cfif>
                                        <cfif url.inActive EQ 0><cfelseif url.active EQ 1 and sesion.user EQ "Admin"><a href="Deleteform.cfm?id=#myData.EmpId#">Delete</a>
                                        </cfif>--->
                                         <!---<cfdump var="#session#"> --->
                                        <!---<cfif url.active EQ 1 and  sesion.user EQ "User"><cfelse><a href="EmployeeEdit.cfm?id=#myData.EmpId#"></a></cfif>
                                        <cfif url.active EQ 1 and  sesion.user EQ "Admin"><cfelse><a href="Deleteform.cfm?id=#myData.EmpId#"></a></cfif>--->

                                        <!---<cfif  url.inActive EQ 0 and is_active EQ "Admin">
                                            <cfelse><a href="EmployeeEdit.cfm?id=#myData.EmpId#">Edit</a>
                                        </cfif>
                                        <cfif url.active EQ 1 and is_active EQ "Admin">
                                            <a href="EmployeeEdit.cfm?id=#myData.EmpId#">Delete</a>
                                        </cfif>--->
                                        </tr>
                                </cfoutput>
                            </tbody>
                    </table>
                </div>  
            </div>  
</body>
</html>

