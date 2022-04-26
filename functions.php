<?php
require_once 'database.php';


class functions {
    private $conn;

    public function __construct(){
        $dbconn = new DBconn();
        $this->conn = $dbconn->openCon();
    }
    
    public function login(){
        if(isset($_POST['loginbtn'])){
            $username = strip_tags(escStr($_POST['username']));
            $password = md5(strip_tags(escStr($_POST['password'])));
            try{
                $stmt = $this->conn->prepare("SELECT * FROM user_info where username=? and password=?");
                $stmt->execute([$username,$password]);
                $row = $stmt->fetch();
                
                    if($row['username'] == $username && $row['password'] == $password){

                        $_SESSION['userLogin'] = $row['username'];
                        header("Location: home.php");
                    }
                    else{
                         header("Location: index.php?invalid");
                    }
            }
            catch(PDOException $e){
                echo $e->getMessage();
            }
        }
    }
    public function addIP(){
        if(isset($_POST['addip-btn'])){
            $ip = $_POST['ip'];
            $user = $_POST['user'];
            $dept = $_POST['dept'];
            $remarks = $_POST['remarks'];
           
            try{
                $stmt = $this->conn->prepare("INSERT INTO ip_details (ip_address,assigned_user,department,remarks) VALUES (?,?,?,?)");
                $stmt->execute([$ip,$user,$dept,$remarks]);
                echo '<script>alert("IP Details successfully added!"); window.location.href = "home.php"; </script>'; 
           
            }catch (PDOException $e){
                echo $e->getMessage();
                
            }
        }
    }


    public function fetchAllIP(){
        try{
            $stmt = $this->conn->prepare("SELECT * FROM ip_details order by ip_id desc");
            $stmt->execute();
            return $stmt;
        }catch (PDOException $e){
            echo $e->getMessage();
        }
    }

    public function fetchSearchIP(){
        if(isset($_POST['searchbtn'])){
            $toSearch =  $_POST['searchip'];
            try{
                $stmt = $this->conn->prepare("SELECT * FROM ip_details where ip_address like ? or assigned_user like ?
                or department like ? or remarks like ? order by ip_id desc");
                $stmt->execute(['%'.$toSearch.'%','%'.$toSearch.'%','%'.$toSearch.'%','%'.$toSearch.'%']);
                return $stmt;
            }catch (PDOException $e){
                echo $e->getMessage();
            }
        }
    }

    public function getEditIP(){
        if(isset($_GET['editip'])){
            try{
                $id = $_GET['editip']; 
                $stmt = $this->conn->prepare("SELECT * FROM ip_details where ip_id = ?");
                $stmt->execute([$id]);
                $row = $stmt->fetch();
                return $row;
           
            }catch (PDOException $e){
                echo $e->getMessage();
            }
        }
    }

    public function getEditIP(){
        if(isset($_GET['editip'])){
            try{
                $id = $_GET['editip']; 
                $stmt = $this->conn->prepare("SELECT * FROM ip_details where ip_id = ?");
                $stmt->execute([$id]);
                $row = $stmt->fetch();
                return $row;
           
            }catch (PDOException $e){
                echo $e->getMessage();
            }
        }
    }

    public function updateIP(){
        if(isset($_POST['editip-btn'])){
            $ipid = $_GET['editip'];
            $ip = $_POST['ip'];
            $user = $_POST['user'];
            $dept = $_POST['dept'];
            $remarks = $_POST['remarks'];
           
            try{
                $stmt = $this->conn->prepare("UPDATE ip_details SET ip_address=?, assigned_user=?, department=?, remarks=? where ip_id = ?");
                $stmt->execute([$ip,$user,$dept,$remarks,$ipid]);
                echo '<script>alert("IP Details successfully updated!"); window.location.href = "home.php"; </script>'; 
           
            }catch (PDOException $e){
                echo $e->getMessage();
                
            }

        }
    }

    public function deleteIP(){
        if(isset($_GET['delid'])){
            try{
                $delid = $_GET['delid']; 
                $stmt =  $this->conn->prepare("DELETE FROM ip_details WHERE ip_id=?");
                $stmt->execute([$delid]);
                echo '<script>alert("IP Details successfully deleted!"); window.location.href="home.php"; </script>'; 
            }catch (PDOException $e){
                echo $e->getMessage();
                return $ew = $e->getMessage();
            }
        }
    }



}
$func = new functions();
?>