<?php
$servername = "my_mariadb:3306";
$username = "wordpress_admin";
$password = "120701A";
$WORDPRESS_DB_HOST = "0000000000000000000000";

if (!function_exists('getenv_docker')) {
	// https://github.com/docker-library/wordpress/issues/588 (WP-CLI will load this file 2x)
	function getenv_docker($env, $default) {
		if ($fileEnv = getenv($env . '_FILE')) {
			return rtrim(file_get_contents($fileEnv), "\r\n");
		}
		else if (($val = getenv($env)) !== false) {
			return $val;
		}
		else {
			return $default;
		}
	}
}
// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: \n" . $conn->connect_error);
}
echo "Connected successfully\n";
// echo $WORDPRESS_DB_USER;
$ENV  = getenv_docker('WORDPRESS_DB_NAME', 'wordpreb');
echo $ENV;
echo "\n"
?>