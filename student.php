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
$sid = $_GET["sid"];

$query = "SELECT *,year(curdate())-year_enrolled as 'years' FROM student NATURAL JOIN person NATURAL JOIN stay_in NATURAL JOIN department NATURAL JOIN part_of NATURAL JOIN faculty NATURAL JOIN live_in NATURAL JOIN address NATURAL JOIN departmentengname NATURAL JOIN facultyengname WHERE sid =".'"'.$sid.'"';



$result = $conn->query($query);
$house_num = $subdistrict = $district = $province = $national_id = $status = $year_enrolled = $behaviour_score = $firstname_th = $surname_th = $nationality = $gender = $firstname_en = $surname_en = $phone_num = $e_mail = $date_of_birth = $dname_th = $fname_th = $building = $road = $alley = $postal_code = $dname_eng = $fname_eng = $year = $GPAX = $cur_name =$year = "";
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        $house_num = $row['house_num'];
        $subdistrict = $row['subdistrict'];
        $district = $row['district'];
        $province = $row['province'];
        $national_id = $row['national_id'];
        $status = $row['status'];
        $year_enrolled = $row['year_enrolled'];
        $behaviour_score = $row['Behaviour_score'];
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
        $years = $row['years'];        
    }
} else {
    echo "0 results";
}

$query = "SELECT * FROM study_in NATURAL JOIN curriculum WHERE sid =".'"'.$sid.'"';



$result = $conn->query($query);
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
$cur_name = $row['cur_name'];
        $year = $row['year'];
    }
}
?>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">DBProject</a>
    </div>
    <ul class="nav navbar-nav">
     <li><a href="home.php">Home</a></li>
      <li class="active"><a href="searchStudent.html">Student</a></li>
      <li><a href="searchInstructor.html">Instructor</a></li>
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
echo"<h2>ข้อมูลส่วนตัวรหัสนิสิต -"." $sid</h2>";
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
echo"<h4><b>รหัสนิสิต:</b> "."$sid<h4>"; 
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
echo"<h4><b>สภาพนิสิต:</b> "."$status<h4>"; 
?> 
</div>
</div>

<div class = "row">
<div class = "col-md-3">
<?php
echo"<h4><b>ปีที่เข้าศึกษา:</b> "."$year_enrolled<h4>"; 
?> 
</div>
<div class = "col-md-3">
<?php
if($status == "ปกติ"){
echo"<h4><b>ชั้นปี:</b> "."$years<h4>"; 
}
?> 
</div>
</div>

<div class = "row">
<div class = "col-md-6">
<?php
echo"<h4><b>หลักสูตร:</b> "."$cur_name ปี "."$year </h4>"; 
?> 
</div>
</div>

<?php
$query = "SELECT * FROM consult NATURAL JOIN instructor WHERE sid =".'"'.$sid.'"';
$result = $conn->query($query);
$national_id_t = "";
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
$national_id_t = $row['national_id_t'];
    }
}

$query = "select firstname_th, surname_th from person where national_id = ".'"'.$national_id_t.'"';
$result = $conn->query($query);
$tfirstname = "";
$tsurname = "";
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
$tfirstname = $row['firstname_th'];
$tsurname = $row['surname_th'];
    }
}
?>

<div class = "row">
<div class = "col-md-5">
<?php
echo"<h4><b>อาจารย์ที่ปรึกษา:</b> "."$tfirstname  "."$tsurname </h4>"; 
?> 
</div>
</div>


<div class="row">
<h3><u>ข้อมูลการลงเรียน</u></h3>
</div>

<div class="row">
<table class="table table-striped">
    <thead>
      <tr>
        <th>รหัสวิชา</th>
        <th>ชื่อย่อวิชา</th>
        <th>ประเภท</th>
        <th>หน่วยกิต</th>
        <th>ปีการศึกษา</th>
        <th>ภาคการศึกษา</th>
        <th>เกรด</th>
      </tr>
    </thead>
<tbody>
<?php
$grade_avg = 0.00;
$credit = 0;
$query = "SELECT year,semester,grade,cid,c_sname,type,credit FROM student NATURAL JOIN take NATURAL JOIN course WHERE sid =".'"'.$sid.'"';
$result = $conn->query($query);
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
     echo"<tr>";
       echo"<td>" . $row['cid'] . "</td>";
       echo"<td>" . $row['c_sname'] . "</td>";
       echo"<td>" . $row['type'] . "</td>";
       echo"<td>" . $row['credit'] . "</td>";
       $credit = $credit + $row['credit'];
       echo"<td>" . $row['year'] . "</td>";
       echo"<td>" . $row['semester'] . "</td>";
       echo"<td>" . $row['grade'] . "</td>";
       $grade_avg = $grade_avg + $row['credit']*$row['grade'];
    }
}

?>
</tbody>
</table>
<?php
if($credit != 0){
$grade_avg = $grade_avg/$credit;
echo("<h4><b>เกรดเฉลี่ยสะสม:</b> "."$grade_avg </h4>");}
?>
</div>
<div class="row">
<h3><u>ข้อมูลวิชาที่ยังไม่เรียน</u></h3>
</div>

<div class="row">
<table class="table table-striped">
    <thead>
      <tr>
        <th>รหัสวิชา</th>
        <th>ชื่อย่อวิชา</th>
        <th>ประเภท</th>
        <th>หน่วยกิต</th>
      </tr>
    </thead>
<tbody>

<?php
$query = "Select *
from (SELECT cid from study_in natural join curriculum natural join consist_of where sid = ".'"'."$sid".'"'.") as table1 NATURAL JOIN course
where cid not in (SELECT cid from student NATURAL JOIN take NATURAL JOIN course WHERE sid = ".'"'."$sid".'"'." AND grade != 0)";
$result = $conn->query($query);
if ($result->num_rows > 0){
 while($row = $result->fetch_assoc()) {
      echo"<tr>";
       echo"<td>" . $row['cid'] . "</td>";
       echo"<td>" . $row['c_sname'] . "</td>";
       echo"<td>" . $row['type'] . "</td>";
       echo"<td>" . $row['credit'] . "</td>";
 }
}
?>
</tbody>
</table>
</div>
<br/>


<div class="row">
<h3><u>ข้อมูลกิจกรรมและรางวัล</u></h3>
</div>
<div class="row">
<table class="table table-striped">
    <thead>
      <tr>
        <th>รหัสกิจกรรม</th>
        <th>ชื่อ</th>
        <th>ปี</th>
        <th>ระดับของรางวัล</th>
      </tr>
    </thead>
<tbody>

<?php
$query = "select * from activityandaward where sid = ".'"'."$sid".'"';
$result = $conn->query($query);
if ($result->num_rows > 0){
 while($row = $result->fetch_assoc()) {
      echo"<tr>";
       echo"<td>" . $row['aid'] . "</td>";
       echo"<td>" . $row['name'] . "</td>";
       echo"<td>" . $row['year'] . "</td>";
       echo"<td>" . $row['prize'] . "</td>";
 }
}
?>
</tbody>
</table>
</div>

<div class="row">
<h3><u>ข้อมูลการศึกษาต่อ</u></h3>
</div>
<div class="row">
<table class="table table-striped">
    <thead>
      <tr>
        <th>รหัสการศึกษาต่อ</th>
        <th>ชื่อโครงการ</th>
        <th>ประเทศ</th>
        <th>วันเริ่มต้น</th>
        <th>วันสิ้นสุด</th>
      </tr>
    </thead>
<tbody>

<?php
$query = "select * from exchange where sid = ".'"'."$sid".'"';
$result = $conn->query($query);
if ($result->num_rows > 0){
 while($row = $result->fetch_assoc()) {
      echo"<tr>";
       echo"<td>" . $row['eid'] . "</td>";
       echo"<td>" . $row['e_name'] . "</td>";
       echo"<td>" . $row['country'] . "</td>";
       echo"<td>" . $row['date_start'] . "</td>";
        echo"<td>" . $row['date_end'] . "</td>";
 }
}
?>
</tbody>
</table>
</div>

<div class="row">
<h3><u>ข้อมูลการลาหยุด</u></h3>
</div>
<div class="row">
<table class="table table-striped">
    <thead>
      <tr>
        <th>รหัสการลาหยุด</th>
        <th>วันเริ่มต้น</th>
        <th>วันสิ้นสุด</th>
      </tr>
    </thead>
<tbody>

<?php
$query = "select * from vacation where sid = ".'"'."$sid".'"';
$result = $conn->query($query);
if ($result->num_rows > 0){
 while($row = $result->fetch_assoc()) {
      echo"<tr>";
       echo"<td>" . $row['vid'] . "</td>";
       echo"<td>" . $row['v_date_start'] . "</td>";
        echo"<td>" . $row['v_date_end'] . "</td>";
 }
}
?>
</tbody>
</table>
</div>
<?php
echo("<a href=studentDelete.php?sid=".$sid.">ลบข้อมูล</a>");
?>

</div>
<br />


</body>
</html>