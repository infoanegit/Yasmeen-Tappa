<cfif IsDefined('URL.id')>
        <cfset variables.delete = createObject("component","ValidatePassword")>
        <cfset variables.data = variables.delete.deleteEmpInfo(EmpId = #URL.id#)>
        <cfoutput> 
                <script>
                    alert("Record Deleted successfully!")
                </script> 
            </cfoutput>
        <cflocation url = "EmployeeViewPage.cfm">
</cfif>