<!DOCTYPE html>
<html lang="en">
<head>
<title>ListFunction</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script> 
</head>
<body>
    <div class="container mt-2 bg-dark" style= "width:600px">
        <form action="" name="myForm" method="post" id="myForm" >
            <div class="container mt-4">
                <div class="row mt-6">
                    <div class="col-sm-8">
                        <h3 class="text-white align-center">ListFunction(Divisible By 3)</h3>                  
                    </div>
                </div>
            </div>    
            <div class="container mt-4">
                <div class="row mt-8">
                    <div class="col-sm-3">
                        <label class="form-label text-warning">Enter a List:</label>
                    </div> 
                    <div class="col-sm-4">   
                        <input type="text" class="form-control" id="list" name="flist" required>
                        <div class="invalid-feedback">Please Enter a list</div>
                    </div> 
                </div>       
            </div>   
            <div class="container mt-4">
                <div class="row mt-4">
                    <div class= "col-sm-7">
                        <span class="float-end">
                        <input type="submit" id="submitbtn" name="submit" value="Submit" class="btn btn-success"/>
                    </div>
                </div>
            </div>            
        </form>
    </div>             
</body>

<cfif isDefined("form.submit")>
  <cfset myfun = getDivisibleByThree(list = "#form.flist#")>
  <cfdump  var="#myfun#">
  <cfscript>

    function getDivisibleByThree(list) {
      var divisibleByThree = [];

      var newlist = listToArray(list);

      cfloop(array=newlist, index="i"){
          if (i % 3 == 0) {
            writeDump(i);
            ArrayAppend(divisibleByThree, i, "true");
          }
      }
      
      return divisibleByThree;
    }

  </cfscript>
</cfif>
</html>