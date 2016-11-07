<?php
/**
 * Created by PhpStorm.
 * User: luoluo
 * Date: 2016/10/24
 * Time: 17:50
 */
$DBDNS ='mysql:host=localhost;port=3306;dbname=test2;charset=utf8';
$USERNAME = 'root';
$PASSWORD = '1234';
$a = $_GET['a'];
$b= $_GET['b'];
$p = new PDO($DBDNS, $USERNAME, $PASSWORD);
$sql = "SELECT * FROM stors WHERE id BETWEEN $a AND $b";
echo $sql;
$rs = $p->query($sql, PDO::FETCH_OBJ);
$r = $rs->fetchAll();
echo json_encode($r);
