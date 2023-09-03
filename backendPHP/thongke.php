<?php
include "connect.php";

$query = "SELECT chitietdonhang.idsanpham, sanpham.tensanpham, COUNT(`soluong`) AS tong FROM `chitietdonhang` INNER JOIN sanpham ON sanpham.id = chitietdonhang.idsanpham GROUP BY `idsanpham`";
$data = mysqli_query($conn, $query);
$result = array();
while ($row = mysqli_fetch_assoc($data)) {
	$result[] = ($row);
	// code...
}
if (!empty($result)) {
	$arr = [
		'success' => true,
		'message' => 'thanh cong',
		'result'  => $result	
	];	
}else{
	$arr = [
		'success' => false,
		'message' => 'khong thanh tong',
		'result'  => $result	
	];
}
print_r(json_encode($arr));

?>