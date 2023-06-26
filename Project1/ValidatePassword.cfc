<!--- ADD EMPLOYEE DATA --->
<cfcomponent>
    <cffunction  name = "userInfo" access="public">
        <cfargument  name = "firstname">
        <cfargument  name = "lastname">
        <cfargument  name = "emailId">
        <cfargument  name = "Password">
        <cfargument  name = "Dateofbirth">
        <cfargument  name = "Phonenumber"> 
        <cfargument  name = "Address1">
        <cfargument  name = "Address2">
        <cfargument  name = "City">           
        <cfargument  name = "State">
        <cfargument  name = "Zipcode">
        <cfargument  name = "Department">
        <cfquery datasource = "DemoTwo" name="abc">
            SELECT EmailId
            FROM employeedetails
            WHERE EmailId = <cfqueryparam value="#emailId#" cfsqltype="cf_sql_varchar">
        </cfquery> 
        <!--- <cfdump var="#abc#"> --->
        <!---<cfdump var = "#abc#"> --->
        <cfif abc.recordCount GT 0>
                <cfoutput><script> alert("This Username and Password already exist.") </script></cfoutput>

        <!--- <cflocation url = "http://127.0.0.1:8500/project1/Amazonpage.cfm">  --->
        <cfelse>
            <cfquery name="abc" datasource="DemoTwo">
                <cfset key = generateSecretKey('AES')>
                <cfset encrypted = encrypt("#arguments.Password#", key, "AES", "Base64")>
                <!---<cfdump var = "#encrypted#">--->
                insert into employeedetails(Firstname, Lastname, EmailId, Password, DOB, Phonenum, Address1, Address2, City, State, Zipcode, E_key, is_admin, is_Active)
                values
                (
                    <cfqueryparam value = "#arguments.firstname#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value = "#arguments.lastname#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value = "#arguments.emailId#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value = "#encrypted#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value = "#arguments.Dateofbirth#" cfsqltype="cf_sql_date">,
                    <cfqueryparam value = "#arguments.Phonenumber#" cfsqltype="cf_sql_integer">,
                    <cfqueryparam value = "#arguments.Address1#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value = "#arguments.Address2#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value = "#arguments.City#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value = "#arguments.State#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value = "#arguments.Zipcode#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value = "#key#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value = "#arguments.Department#" cfsqltype="cf_sql_varchar">,
                     <cfqueryparam value = "1" cfsqltype="cf_sql_Integer">
                
                )
            </cfquery>
            <cfoutput><script> alert("Data Insert Successfully.")</script></cfoutput>
        </cfif>
    </cffunction>

     <!---Login page--->
    <cffunction name = "LoginPassword">
    <cfargument  name = "emailId">
    <cfargument  name = "Password">
    <cfquery name="getEmpInfo" datasource="DemoTwo">
        SELECT EmpId, EmailId, Password, E_key, is_admin, Firstname 
        FROM employeedetails
        WHERE EmailId = <cfqueryparam value = "#arguments.emailId#" cfsqltype="cf_sql_varchar"> and is_Active = 1
    </cfquery>
    <cfif getEmpInfo.is_admin eq "admin">
        <cfset session.user = getEmpInfo.is_admin>
    <cfelse> 
        <cfset session.user = getEmpInfo.is_admin>  
        <cfset session.EmpId = getEmpInfo.EmpId>    
    </cfif>    
<cfdump var="#session.user#">
     <cfif getEmpInfo.recordCount GT 0>
        <cfset decrypted = decrypt("#getEmpInfo.Password#", "#getEmpInfo.E_key#", "AES", "Base64")>
    </cfif>

<!---<cfdump var="#decrypted#" abort> --->
    <cfif getEmpInfo.recordCount eq 0>
        <cfoutput>
            <script>
                alert("This EmailId does not exist");
            </script>
        </cfoutput>
    <cfelseif arguments.Password eq decrypted >
        <cflocation url = "http://127.0.0.1:8500/project1/EmployeeViewPage.cfm">   
    <cfelse>
        <cfoutput>
            <script>
                alert("Please Enter Valid EmailId and Password!");
            </script>
        </cfoutput>
    </cfif>
    </cffunction>


<!---Employeedetails---->
    <cffunction  name = "getEmpdetails" access="public">
        <cfif session.user eq "admin">
            <cfquery datasource = "DemoTwo" name="getEmpInfo">
                SELECT *
                FROM employeedetails
                where is_Active = 1
            </cfquery>
        <cfelse>
            <cfquery datasource = "DemoTwo" name="getEmpInfo">
                SELECT *
                FROM employeedetails
                WHERE EmpId = #session.EmpId# and is_Active = 1
            </cfquery>
        </cfif>
        <cfreturn getEmpInfo>
    </cffunction>
    
    
 <!---deleteeEmployee Record--->
    <cffunction  name = "deleteEmpInfo" access="public">
        <cfargument  name = "EmpId">
        <cfif session.user eq "admin">
            <cfquery datasource = "DemoTwo" name="deleteEmpInfo">
                update employeedetails
                set is_Active = 0
                where EmpId= '#arguments.EmpId#'
            </cfquery> 
        <cfelse> 
            <cfoutput>
                <script>
                    alert("User Cannot delete the record")
                </script>
            </cfoutput>      
        </cfif>
    </cffunction>

<!--- display the active and in activ record--->
    <cffunction  name = "displayRecords" access="public">
        <cfquery name="myQuery" datasource="DemoTwo">
            SELECT *
            FROM employeedetails
            WHERE is_Active = 0
        </cfquery>
        <cfreturn myQuery>
    </cffunction>    

<!---ResetPassword--->
<cffunction name = "resetpassword" access="public">
    <cfargument name = "emailId">
    <cfargument name = "Password">
      <cfquery name="getUserPassword" datasource="DemoTwo">
            SELECT Password, EmailId
            FROM employeedetails
            WHERE EmailId = <cfqueryparam value="#arguments.emailId#" cfsqltype="cf_sql_varchar">
        </cfquery>
<!---         <cfdump  var="#getUserPassword.recordcount#" abort> --->
    <cfif getUserPassword.recordcount GT 0>
            <cfset key = generateSecretKey('AES')>
            <cfset encrypted = encrypt("#arguments.Password#", key, "AES", "Base64")>
        <cfquery name="updatePassword" datasource="DemoTwo">
            UPDATE employeedetails
            SET Password = <cfqueryparam value="#encrypted#" cfsqltype="cf_sql_varchar">,
                E_key = <cfqueryparam value = "#key#" cfsqltype="cf_sql_varchar">
            WHERE EmailId = <cfqueryparam value="#arguments.emailId#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfoutput>
            <script>
                alert("Password Change Successfully")
            </script>
        </cfoutput>
    <cfelse>  
        <cfoutput>
            <script>
                alert("Please Enter correct EmailId and Password!")
            </script>
        </cfoutput>   
    </cfif>  
</cffunction>

<!---select Employee details--->
 <cffunction name = "selectdata" access="public">
    <cfargument  name = "EmpId">
        <cfquery datasource = "DemoTwo" name = "qselectdata">
            SELECT *
            FROM employeedetails
            WHERE EmpId =  '#arguments.EmpId#'
        </cfquery>
          <cfreturn qselectdata>
    </cffunction>    

<!---Update Employee Details--->
    <cffunction  name = "updateEmpInfo" access="public">
        <cfargument  name = "EmpId">
        <cfargument  name = "firstname">
        <cfargument  name = "lastname">
        <cfargument  name = "emailId">
        <cfargument  name = "Password">
        <cfargument  name = "Dateofbirth">
        <cfargument  name = "Phonenumber">
        <cfargument  name = "Address1">
        <cfargument  name = "Address2">
        <cfargument  name = "City">
        <cfargument  name = "State">
        <cfargument  name = "Zipcode">
        <cfquery datasource = "DemoTwo" name="qryupdateEmpInfo">
            UPDATE employeedetails
            SET 
            FirstName = <cfqueryparam value = "#arguments.firstname#" cfsqltype="cf_sql_varchar">,           
            Lastname = <cfqueryparam value = "#arguments.lastname#" cfsqltype="cf_sql_varchar">,
            EmailId = <cfqueryparam value = "#arguments.emailId#" cfsqltype="cf_sql_varchar">,
            Password= <cfqueryparam value = "#arguments.Password#" cfsqltype="cf_sql_varchar">,
            DOB = <cfqueryparam value = "#arguments.Dateofbirth#" cfsqltype="cf_sql_date">,
            Phonenum = <cfqueryparam value = "#arguments.Phonenumber#" cfsqltype="cf_sql_integer">,
            Address1 = <cfqueryparam value = "#arguments.Address1#" cfsqltype="cf_sql_varchar">,
            Address2 = <cfqueryparam value = "#arguments.Address2#" cfsqltype="cf_sql_varchar">,
            City = <cfqueryparam value = "#arguments.City#" cfsqltype="cf_sql_varchar">,
            State = <cfqueryparam value = "#arguments.State#" cfsqltype="cf_sql_varchar">,
            Zipcode = <cfqueryparam value = "#arguments.Zipcode#" cfsqltype="cf_sql_varchar">
            WHERE EmpId='#arguments.EmpId#'
        </cfquery>
        <cfoutput>
        <script> 
            alert("Data Update Successfully.")
        </script>
   </cfoutput>
    </cffunction>

    <cffunction  name = "displayEmpInfo" access="public"> 
        <cfquery datasource = "DemoTwo" name="local.qrydisplayEmpInfo">
            SELECT *
            FROM employeedetails
            WHERE EmpId = "#URL.SLNO#";
        </cfquery>
        <cfreturn local.qrydisplayEmpInfo>        
    </cffunction>


    <cffunction  name = "validateLoginPassword" access="public">
        <cfargument  name = "emailId">
        <cfargument  name = "Password">
        <cfquery datasource = "DemoTwo" name="local.qryLoginValidation">
            SELECT EmailId, Password
            From employeedetails
            WHERE EmailId = <cfqueryparam value = "#arguments.emailId#" cfsqltype="cf_sql_varchar">
            AND Password  = <cfqueryparam value = "#arguments.Password#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfif local.qryLoginValidation.recordCount GT 0>
            <cfset session.EmailId = local.qryLoginValidation.EmailId/>   
            <cfset session.Password = local.qryLoginValidation.Password/>

            <cfquery datasource = "DemoTwo" name="local.qryAddLoginInfo">
                <cfset encrypt_emailId = encrypt("#arguments.emailId#", application.key, "AES", "Base64")>
                <cfset encrypt_Password = encrypt("#arguments.Password#", application.key, "AES", "Base64")>
                insert into emp1(EmailId,Password)
                values
                (
                    <cfqueryparam value = "#encrypt_emailId#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value = "#encrypt_Password#" cfsqltype="cf_sql_varchar">
                )
            </cfquery>
        <cflocation  url="http://127.0.0.1:8500/project1/Amazonpage.cfm"> 
        <cfelse>
        <cfoutput>INVALID EmailId AND Password</cfoutput>
        </cfif>
        <cfreturn local.qryLoginValidation>
    </cffunction>

    <cffunction  name = "getLoginPassword" access="public">
        <cfquery datasource = "DemoTwo" name="local.qrygetEmpInfo">
            SELECT Firstname,Lastname,EmailId, Password
            FROM employeedetails
        </cfquery>
       <cfreturn local.qrygetEmpInfo>
    </cffunction>
</cfcomponent>
