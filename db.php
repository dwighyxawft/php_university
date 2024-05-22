<?php

class Setters{
    public $servername;
    public $username;
    public $password;
    public $dbname;
    public $query;
    public $statement;
    public $conn;
    public $home;
    function __construct(){
        $this->servername = "localhost";
        $this->username = "dwightxawft";
        $this->password = "timilehin1.";
        $this->dbname = "university_db";
        $this->home = "http://localhost/university/";
        $this->conn = mysqli_connect($this->servername, $this->username, $this->password, $this->dbname);

        // Check connection
        if ($this->conn) {
            session_start();
        }else{
            echo "Connection failed ". mysqli_connect_error();
        }
    }

    public function execute_query(){
        $this->statement = mysqli_query($this->conn, $this->query);
        if(!$this->statement){
            return false;
        }
        return true;
    }

    public function fetch_assoc(){
        $this->execute_query();
        return mysqli_fetch_assoc($this->statement);
    }

    public function fetch_array(){
        $this->execute_query();
        return mysqli_fetch_array($this->statement, MYSQLI_ASSOC);
    }

    public function fetch_all(){
        $this->execute_query();
        return mysqli_fetch_all($this->statement, MYSQLI_ASSOC);
    }

    public function redirect($url){
        $link = '<script>
        location.href= '.$this->home.$url.'
        </script>';
        return $link;
    }

    public function total_rows(){
        $this->execute_query();
        return mysqli_num_rows($this->statement);
    }

    public function user_session_public(){
        if(!isset($_SESSION["staff_id"])){
            echo $this->redirect("about.php");
        }
    }

    public function user_session_private(){
        if(isset($_SESSION["staff_id"])){
            echo $this->redirect("dashboard.php");
        }
    }
}
?>
