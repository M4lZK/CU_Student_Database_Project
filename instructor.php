<?php

include('connect.php');

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Student</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<?php
$tid = $_GET["tid"];

$query = "SELECT *
          FROM person natural join instructor natural join stay_in natural join department natural join part_of natural join faculty natural join departmentengname natural join facultyengname natural join live_in natural join address
          where tid = ".'"'.$tid.'"';



$result = $conn->query($query);
$house_num = $subdistrict = $district = $province = $national_id = $status = $firstname_th = $surname_th = $nationality = $gender = $firstname_en = $surname_en = $phone_num = $e_mail = $date_of_birth = $dname_th = $fname_th = $building = $road = $alley = $postal_code = $dname_eng = $fname_eng = $year = "";
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        $house_num = $row['house_num'];
        $subdistrict = $row['subdistrict'];
        $district = $row['district'];
        $province = $row['province'];
        $national_id = $row['national_id'];
        $status = $row['status'];
        $firstname_th = $row['firstname_th'];
        $surname_th = $row['surname_th'];
        $nationality = $row['nationality'];
        $gender = $row['gender'];
        $firstname_en = $row['firstname_en'];
        $surname_en = $row['surname_en'];
        $phone_num = $row['phone_num'];
        $e_mail = $row['e_mail'];
        $date_of_birth = $row['date_of_birth'];
        $dname_th = $row['dname_th'];
        $fname_th = $row['fname_th'];
        $building = $row['building'];
        $road = $row['road'];
        $alley = $row['alley'];
        $postal_code = $row['postal_code'];
        $dname_eng = $row['dname_eng'];
        $fname_eng = $row['fname_eng'];       
    }
} else {
    echo "0 results";
}
?>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">DBProject</a>
    </div>
    <ul class="nav navbar-nav">
     <li><a href="home.php">Home</a></li>
      <li><a href="searchStudent.html">Student</a></li>
      <li class="active"><a href="searchInstructor.html">Instructor</a></li>
      <li><a href="searchActivity.html">Activity&Award</a></li>
       <li><a href="searchVacation.html">Vacation</a></li>
        <li><a href="searchExchange.html">Exchange</a></li>
       <li><a href="searchCourse.html">Course</a></li>
       <li><a href="searchCurriculum.html">Curriculum</a></li>
       <li><a href="addStudent.html">Add</a></li>
      
    </ul>
  </div>
</nav>

<div class = "container">
<div class="row">
<?php
echo"<h2>ข้อมูลส่วนตัวรหัสอาจารย์ -"." $tid</h2>";
?>
</div>

<div class="row">
<h3><u>ข้อมูลส่วนตัว</u></h3>
</div>

<div class = "row">
<div class = "col-md-3">
<?php
echo"<h4><b>ชื่อ:</b> "."$firstname_th<h4>"; 
?> 
</div>
<div class = "col-md-3">
<?php
echo"<h4><b>นามสกุล:</b> "."$surname_th<h4>"; 
?> 
</div>
</div>

<div class = "row">
<div class = "col-md-3">
<?php
echo"<h4><b>Name:</b> "."$firstname_en<h4>"; 
?> 
</div>
<div class = "col-md-3">
<?php
echo"<h4><b>Surname:</b> "."$surname_en<h4>"; 
?> 
</div>
</div>

<div class = "row">
<div class = "col-md-6">
<?php
echo"<h4><b>รหัสบัตรประชาชน:</b> "."$national_id<h4>"; 
?> 
</div>
</div>

<div class = "row">
<div class = "col-md-6">
<?php
echo"<h4><b>วันเกิด:</b> "."$date_of_birth<h4>"; 
?> 
</div>
</div>

<div class = "row">
<div class = "col-md-2">
<?php
echo"<h4><b>สัญชาติ:</b> "."$nationality<h4>"; 
?> 
</div>
<div class = "col-md-2">
<?php
echo"<h4><b>เพศ:</b> "."$gender<h4>"; 
?> 
</div>
</div>

<div class = "row">
<div class = "col-md-4">
<?php
echo"<h4><b>e-mail:</b> "."$e_mail<h4>"; 
?> 
</div>
<div class = "col-md-3">
<?php
echo"<h4><b>หมายเลขโทรศัพท์:</b> "."$phone_num<h4>"; 
?> 
</div>
</div>

<div class="row">
<h3><u>ที่อยู่</u></h3>
</div>

<div class = "row">
<div class = "col-md-2">
<?php
echo"<h4><b>บ้านเลขที่:</b> "."$house_num<h4>"; 
?> 
</div>
<div class = "col-md-2">
<?php
echo"<h4><b>ซอย:</b> "."$alley<h4>"; 
?> 
</div>
<div class = "col-md-2">
<?php
echo"<h4><b>อาคาร:</b> "."$building<h4>"; 
?> 
</div>
</div>

<div class = "row">
<div class = "col-md-2">
<?php
echo"<h4><b>ถนน:</b> "."$road<h4>"; 
?> 
</div>
<div class = "col-md-3">
<?php
echo"<h4><b>แขวง/ตำบล:</b> "."$subdistrict<h4>"; 
?> 
</div>
<div class = "col-md-3">
<?php
echo"<h4><b>เขต/อำเภอ:</b> "."$district<h4>"; 
?> 
</div>
</div>

<div class = "row">
<div class = "col-md-2">
<?php
echo"<h4><b>จังหวัด:</b> "."$province<h4>"; 
?> 
</div>
<div class = "col-md-3">
<?php
echo"<h4><b>หมายเลขไปรษนีย์:</b> "."$postal_code<h4>"; 
?> 
</div>
</div>

<div class="row">
<h3><u>ข้อมูลการศึกษา</u></h3>
</div>

<div class = "row">
<div class = "col-md-4">
<?php
echo"<h4><b>รหัสอาจารย์:</b> "."$tid<h4>"; 
?> 
</div>
</div>

<div class = "row">
<div class = "col-md-3">
<?php
echo"<h4><b>คณะ:</b> "."$fname_th<h4>"; 
?> 
</div>
<div class = "col-md-6">
<?php
echo"<h4><b>Faculty:</b> "."$fname_eng<h4>"; 
?> 
</div>
</div>

<div class = "row">
<div class = "col-md-3">
<?php
echo"<h4><b>ภาควิชา:</b> "."$dname_th<h4>"; 
?> 
</div>
<div class = "col-md-6">
<?php
echo"<h4><b>Department:</b> "."$dname_eng<h4>"; 
?> 
</div>
</div>

<div class = "row">
<div class = "col-md-3">
<?php
echo"<h4><b>สภาพอาจารย์:</b> "."$status<h4>"; 
?> 
</div>
</div>

<div class="row">
<h3><u>ข้อมูลนักเรียนที่ปรึกษา</u></h3>
</div>

<div class="row">
<table class="table table-striped">
    <thead>
      <tr>
        <th>รหัสนิสิต</th>
        <th>ชื่อ</th>
        <th>นามสกุล</th>
        <th>สถานะ</th>
        <th>ชั้นปี</th>
        <th>เกรดเฉลี่ยสะสม</th>
        <th>ข้อมูลเพิ่มเติม</th>
      </tr>
    </thead>
<tbody>
<?php
$query = "SELECT sid,firstname_th,surname_th,status,(sum(credit*grade))/(sum(credit)) as 'gpax',status,year(curdate())-student.year_enrolled as 'year' FROM consult natural join student natural join take natural join course natural join person where tid = ".'"'.$tid.'"
group by sid';
$result = $conn->query($query);
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
     echo"<tr>";
       echo"<td>" . $row['sid'] . "</td>";
       echo"<td>" . $row['firstname_th'] . "</td>";
       echo"<td>" . $row['surname_th'] . "</td>";
       echo"<td>" . $row['status'] . "</td>";
       if($row['status'] != 'ปกติ'){
           echo"<td>" . "-" . "</td>"; 
       }
       else{
       echo"<td>" . $row['year'] . "</td>";
       }
       echo"<td>" . $row['gpax'] . "</td>";
        echo "<td><a href=student.php?sid=".$row['sid'].">ดูข้อมูลเพิ่มเติม</a></td>";
    }
}

?>
</tbody>
</table>

</div>
</div>



</body>
</html>