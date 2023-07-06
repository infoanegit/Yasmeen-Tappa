<!DOCTYPE html>
<html lang="en">
<head>
<title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>

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
<Script for modal 
    <script>
        <script>
        $(document).ready(function() {
        // Function to show the Bootstrap modal
        function showModal() {
            $('#messageModal').modal('show');
        }
        // Call the function to show the modal when a button is clicked
        $('#modalbtn').on('click', function() {
            showModal();
        });
        });
    </script>  
<body>
 <!-- Button trigger modal -->
            <div class="row mt-3">
                    <div class= "col-sm-8">
                        <span class="float-end">
                        <button type="modalbtn" class="btn btn-primary" data-toggle="modal" data-target="#messageModal">
                            Show Message
                        </button>
                 </div>
            </div>
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
                                <p>Record Delete Successfully.</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
                                 <button type="button" class="btn btn-primary" data-dismiss="modal">OK</button>
                            </div>
                        </div>
                    </div>
                </div>
</body>    
</html>          