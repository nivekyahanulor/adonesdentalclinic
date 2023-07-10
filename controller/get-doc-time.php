<?php
include('database.php');
error_reporting(0);
$id = $_POST['id'];
$tbl_event  = $mysqli->query("SELECT * from tbl_doctors where doctor_id='$id'");	
$response = '';
while($val = $tbl_event->fetch_object()){
        $response .= '<br> Time : ' . $val->times . ' - '. $val->timee;
}
echo $response;