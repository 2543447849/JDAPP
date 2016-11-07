<?php
/**
 * Created by PhpStorm.
 * User: luoluo
 * Date: 2016/10/25
 * Time: 17:42
 */
$DBDNS ='mysql:host=localhost;port=3306;dbname=test2;charset=utf8';
$USERNAME = 'root';
$PASSWORD = '1234';
$p = new PDO($DBDNS, $USERNAME, $PASSWORD);
$a = $_GET['listname'];
$sql = "SELECT
middle_part.middle_name,
small_part.id_img,
small_part.small_name
FROM
middle_part
INNER JOIN big_part ON middle_part.part_num = $a AND big_part.id = middle_part.part_num
INNER JOIN small_part ON middle_part.small_num = small_part.small_number";
$rs = $p->query($sql, PDO::FETCH_OBJ);
$r = $rs->fetchAll();
echo json_encode($r);
