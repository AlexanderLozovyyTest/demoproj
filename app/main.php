<?php
//header("Access-Control-Allow-Origin: *");
//header("Content-Type: application/json; charset=UTF-8");

$db = new mysqli("localhost", "user1", "Password1!", "people");

$res = $db->query("SELECT first_name, second_name FROM workers");

$outp = "";
while($row = $res->fetch_array(MYSQLI_ASSOC)) {
  if ($outp != "") {$outp .= ",";}
  $outp .= '{"first_name":"'  . $row["first_name"] . '",';
  $outp .= '"second_name":"'   . $row["second_name"]        . '"}';
}
$outp ='{"people":['.$outp.']}';
$db->close();

echo($outp);
?>