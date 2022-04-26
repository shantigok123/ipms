<?php
session_start();  
require_once 'functions.php';
if(!isset($_SESSION['userLogin']))
{
   header('Location: index.php');
}


$func->addIP();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IP Management System</title>
    <link rel="stylesheet" href="bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>
        <center style="margin-top:2rem;"><h1>Add new IP Address details</h1></center>
        <div id="add-container">
        
            <form id="addform" method="post">
                <div class="form-group">
                    <label for="ip">IP Address</label>
                    <input type="text" class="form-control form-control-lg" id="ip" name="ip" autocomplete="off" required autofocuss> 
                </div>
                <div class="form-group">
                    <label for="user">Assigned User</label>
                    <input type="text" class="form-control form-control-lg" id="user" name="user" autocomplete="off" required>
                </div>
                <div>
                    <label for="dept">Department</label>
                    <select class="form-control form-control-lg" id="dept" name="dept" required>
                    <option value=""> ----- </option>
                    <option value="ACCOUNTING">ACCOUNTING</option>
                    <option value="BILLING">BILLING</option>
                    <option value="CNC">CNC</option>
                    <option value="HRAD">HRAD</option>
                    <option value="JOB CONTROLLER">JOB CONTROLLER</option>
                    <option value="KAIZEN">KAIZEN</option>
                    <option value="MANCOM">MANCOM</option>  
                    <option value="MARKETING">MARKETING</option>
                    <option value="MIS">MIS</option>
                    <option value="PARTS">PARTS</option>
                    <option value="PURCHASING">PURCHASING</option>
                    <option value="SERVICE ADVISOR">SERVICE ADVISOR</option>
                    <option value="SERVICE BACK OFFICE">SERVICE BACK OFFICE</option>
                    <option value="SERVICE ESTIMATOR">SERVICE ESTIMATOR</option>
                    <option value="PRINTER">PRINTER</option>
                    <option value="ROUTER">ROUTER</option>
        
                    </select>
                </div>
                <div class="form-group">
                    <label for="remarks">Remarks</label>
                    <input type="text" class="form-control form-control-lg" id="remarks" name="remarks" autocomplete="off" required> 
                </div>
                <button type="submit" style="width:100%;" id="addip-btn" name="addip-btn" class="btn btn-primary btn-lg">Save</button>               
                <a class="btn btn-warning btn-lg" href="home.php" style="width:100%; margin-top:10px;" id="cancel-btn" s role="button">Cancel</a>
            </form>
        </div>
    
</body>
<script src="jquery-3.5.1.min.js"></script>
</html>