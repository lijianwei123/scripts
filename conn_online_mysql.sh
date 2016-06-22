#!/bin/sh
#author lijianwei

cd `dirname $0`

#读取所有数据库分组
php ./read_mysql_config.php mysql_group
echo 
echo "input group index:"
echo 

read key

#数据库连接
connStr=`php ./read_mysql_config.php mysql_conn_str $key`
echo $connStr
echo 

#连接
eval $connStr
