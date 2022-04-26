<?php
session_start();  
require_once 'functions.php';
if(!isset($_SESSION['userLogin']))
{
   header('Location: index.php');
}

if(!isset($_POST['searchbtn'])){
$stmt = $func->fetchAllIP();
}
else
{
$stmt = $func->fetchSearchIP();
}


$func->deleteIP();
$func->pingIP();
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IP Management System</title>
   
    </form>
        <div id="table-container">
            <table class="table table-striped" id="tableip">
                <thead>
                    <tr>
                        <th style="text-align:center;">IP Adresss</th>
                        <th style="text-align:center;">Assigned User</th>
                        <th style="text-align:center;">Department</th>
                        <th style="text-align:center;">Remarks</th>
                        <th style="text-align:center;">Action</th>
                    </tr>
                </thead>
                <tbody>
                <?php if($stmt->rowCount() > 0){while($row = $stmt->fetch()){ ?>

                    <tr> 
                        <td style="text-align:center;"><?php print($row['ip_address']); ?></td>   
                        <td style="text-align:center;"><?php print($row['assigned_user']); ?></td>  
                        <td style="text-align:center;"><?php print($row['department']); ?></td>
                        <td style="text-align:center;"><?php print($row['remarks']); ?></td>

                        <td style="text-align:center;"><a  class="btn btn-warning action" title="Check IP" href="home.php?pingip=<?php print($row['ip_address']); ?>">Ping</a> 
                        | <a  class="btn btn-primary action"  title="Edit Details" href="editip.php?editip=<?php print($row['ip_id']); ?>">Edit</a>
                        | <a  class="btn btn-danger action delete" href="home.php?delid=<?php print($row['ip_id']); ?>"  title="Delete Details">Delete</a></td>
                    </tr>       
                    
                <?php } } ?>
                </tbody>
            </table>  
        </div>         
    
</body>
<script src="jquery-3.5.1.min.js"></script>


<script>
        // JQuery confirmation
        $('.delete').on('click', function () {
            return confirm('Delete this ip details?');
        });
</script>

</html>