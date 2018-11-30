<?php
$server='localhost';	
$username='root';
$password='';
$database='tourist';
@$con=mysql_connect($server,$username,$password,$database)or die('');
mysql_select_db('tourist');	
if(!$con)
	die("can not connect to the database $database on the server $server");

?>