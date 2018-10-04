<?php
$cluster = Cassandra::cluster()
    ->withContactPoints('localhost') // cassandra address 
    ->withPort(9042)
    ->build();
$keyspace = 'memorize'; // keyspace
$con = $cluster->connect($keyspace);
$user_id="2cc37550-c63a-11e8-8fb2-516705f4a648";
?>