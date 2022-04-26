<?php 

class DBconn{

    private $host = "mysql:host=127.0.0.1;dbname=ipms";
    private $username = "root";
    private $password = "";
    private $options = array( PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, PDO::ATTR_DEFAULT_FETCH_MODE => 
    PDO::FETCH_ASSOC);

    public $conn;

    public function openCon()
    {
        try
        {
            $this->conn = new PDO($this->host, $this->username, $this->password, $this->options);
            return $this->conn;
            
        }
        catch(PDOException $e)
        {
            echo "Connection error: " . $e->getMessage();
        }
    }

}
 //dasdaadads

function escStr($value) {
    $escape_string = stripslashes(trim(($value)));
    return $escape_string;
}


?>