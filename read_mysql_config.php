#!/bin/env php
<?php
$mysqlConfigPath = $_SERVER['HOME']. "/iron/vendor/zan-config/iron/files/mysql.php";

$action = $_SERVER['argv'][1];
switch ($action) {
	case "mysql_group":
	   print_r(mysqlGroup());
	break;

	case "mysql_conn_str":
           $key = $_SERVER['argv'][2];
	   $conn = mysqlConn($key);
           preg_match('/^mysql:host(=(?P<host>[.\w]+))(:(?P<port>\d+))?;dbname(=(?P<dbname>\w+))$/i', $conn['connection'], $matches);
	   empty($matches['port']) && ($matches['port'] = 3306);
	   printf("mysql -h%s -P%d -u%s -p%s -D%s", $matches['host'], $matches['port'], $conn['username'], $conn['password'], $matches['dbname']);
	break;
}


function mysqlConn($key)
{
	$config = mysqlConfig();

	$group = mysqlGroup();
        $groupName = $group[$key];
	
	$conn = $config[$groupName];
	return $conn;
}

function mysqlConfig()
{
	global $mysqlConfigPath;
        $config = require($mysqlConfigPath);
	return $config['online'];
}


function mysqlGroup()
{
	$config = mysqlConfig();
	return array_keys($config);
}

