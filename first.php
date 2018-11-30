<?php
ob_start();
error_reporting(E_ALL & ~E_NOTICE);
require 'connection.php';
?>
<html>
	<head>
		<title>my e commerce web site</title>
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
         <link rel="stylesheet" href="s.css">
		</head>
	<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
   <a class="navbar-brand" href="in.php">TOURISM</a>
    </nav>
		<div id="container">
		
		<?php
		$place_id=$_GET['place_id'];
					$q=mysql_query("select * from place where c_id=$place_id ");
					if($q)
					{
						while($r=mysql_fetch_assoc($q))
						{
							$name=$r['name'];
							$price=$r['price'];
							$dec=$r['description'];
							$img=$r['img'];
							echo "<div class='a' align='center'>
							<h2 '>$name</h2>
							<img src='$img'>
							<p>price=$price</p>
							<p>$dec</p>
							<hr>
							</div>
							";
						}
					}
					?>
		</div>
		</body>
		</html>