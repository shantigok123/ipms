<?php
session_start();  
require_once 'functions.php';
if(!isset($_SESSION['userLogin']))
{
   header('Location: index.php');
}


$row = $func->getEditIP();
$func->updateIP();

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
        <center style="margin-top:2rem;"><h1>Edit IP Address details</h1></center>
        <div id="add-container">
        
            <form id="addform" method="post">
                <div class="form-group">
                    <label for="ip">IP Address</label>
                    <input type="text" class="form-control form-control-lg" id="ip" name="ip" autocomplete="off" required autofocuss
                    value="<?php print($row['ip_address']); ?>"> 
                </div>
                <div class="form-group">
                    <label for="user">Assigned User</label>
                    <input type="text" class="form-control form-control-lg" id="user" name="user" autocomplete="off" required
                    value="<?php print($row['assigned_user']); ?>">
                </div>
                <div>
                    <label for="dept">Department</label>
                    <select class="form-control form-control-lg" id="dept" name="dept" required>
                    <option value=""> ----- </option>
                    <option value="ACCOUNTING"  <?php echo ($row['department'] == "ACCOUNTING")?'selected':'';?> >ACCOUNTING</option>
                    <option value="BILLING" <?php echo ($row['department'] == "BILLING")?'selected':'';?> >BILLING</option>
                    <option value="CNC" <?php echo ($row['department'] == "CNC")?'selected':'';?> >CNC</option>
                    <option value="HR" <?php echo ($row['department'] == "HRAD")?'selected':'';?> >HRAD</option>
                    <option value="JOB CONTROLLER" <?php echo ($row['department'] == "JOB CONTROLLER")?'selected':'';?> >JOB CONTROLLER</option>
                    <option value="KAIZEN" <?php echo ($row['department'] == "KAIZEN")?'selected':'';?> >KAIZEN</option>
                    <option value="MANCOM" <?php echo ($row['department'] == "MANCOM")?'selected':'';?> >MANCOM</option>
                    <option value="MARKETING" <?php echo ($row['department'] == "MARKETING")?'selected':'';?> >MARKETING</option>
                    <option value="MIS" <?php echo ($row['department'] == "MIS")?'selected':'';?> >MIS</option>
                    <option value="PARTS" <?php echo ($row['department'] == "PARTS")?'selected':'';?> >PARTS</option>
                    <option value="PURCHASING" <?php echo ($row['department'] == "PURCHASING")?'selected':'';?> >PURCHASING</option>
                    <option value="SERVICE ADVISOR" <?php echo ($row['department'] == "SERVICE ADVISOR")?'selected':'';?> >SERVICE ADVISOR</option>
                    <option value="SERVICE BACK OFFICE" <?php echo ($row['department'] == "SERVICE BACK OFFICE")?'selected':'';?> >SERVICE BACK OFFICE</option>
                    <option value="SERVICE ESTIMATOR" <?php echo ($row['department'] == "SERVICE ESTIMATORS")?'selected':'';?> >SERVICE ESTIMATOR</option>
                    <option value="SERVICE BACK OFFICE" <?php echo ($row['department'] == "PRINTER")?'selected':'';?> >PRINTER</option>
                    <option value="SERVICE ESTIMATOR" <?php echo ($row['department'] == "ROUTER")?'selected':'';?> >ROUTER</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="remarks">Remarks</label>
                    <input type="text" class="form-control form-control-lg" id="remarks" name="remarks" autocomplete="off" required
                    value="<?php print($row['remarks']); ?>"> 
                </div>
                <button type="submit" style="width:100%;" id="editip-btn" name="editip-btn" class="btn btn-primary btn-lg">Update</button>               
                <a class="btn btn-warning btn-lg" href="home.php" style="width:100%; margin-top:10px;" id="cancel-btn" s role="button">Cancel</a>
            </form>
        </div>
    
</body>
<script src="jquery-3.5.1.min.js"></script>
</html>