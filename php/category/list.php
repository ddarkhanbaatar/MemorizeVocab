<?php
include_once('../db_connection.php');

$query = "SELECT categoryid, cast(createdate as text) as createdate, easyinterval,memberid,name FROM category_list";
$statement = new Cassandra\SimpleStatement( $query);
$future = $con->executeAsync($statement); // fully asynchronous and easy parallel execution
$result = $future->get(); // wait for the result, with an optional timeout


foreach ($result as $row) { // results and rows implement Iterator, Countable and ArrayAccess
    $data[] = $row;
}

echo json_encode($data);
?>