<?php

include('connect.php');

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Add</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">DBProject</a>
    </div>
    <ul class="nav navbar-nav">
       <li><a href="home.php">Home</a></li>
      <li><a href="searchStudent.html">Student</a></li>
      <li><a href="searchInstructor.html">Instructor</a></li>
      <li><a href="searchActivity.html">Activity&Award</a></li>
       <li><a href="searchVacation.html">Vacation</a></li>
        <li><a href="searchExchange.html">Exchange</a></li>
       <li><a href="searchCourse.html">Course</a></li>
       <li><a href="searchCurriculum.html">Curriculum</a></li>
       <li class="active"><a href="addStudent.html">Add</a></li>
      
    </ul>
  </div>
</nav>

<div class="container">
<div class = "row">
<h2><span class="label label-primary">เพิ่มข้อมูล</span></h2>
<br/>
<div class = "row">
<div class="btn-group btn-group-justified">
  <a href="addStudent.html" class="btn btn-primary">นักเรียน</a>
  <a href="addInstructor.html" class="btn btn-primary">อาจารย์</a>
  <a href="addCourse.html" class="btn btn-primary">วิชา</a>
  <a href="addSection.html" class="btn btn-primary">ตอนเรียน</a>
  <a href="addCurriculum.html" class="btn btn-primary">หลักสูตร</a>
  <a href="addActivityandaward.html" class="btn btn-primary">กิจกรรม/รางวัล</a>
  <a href="addAbroad.html" class="btn btn-primary">เรียนต่อ</a>
</div>
</div>
</br>
<div class = "row">
<div class="btn-group btn-group-justified">
<a href="addVacation.html" class="btn btn-primary">ลาหยุด</a>
   <a href="addConsult.html" class="btn btn-primary">การปรึกษา</a>
    <a href="addTeachCourse.html" class="btn btn-primary">การสอน</a>
    <a href="addTakeCourse.html" class="btn btn-primary">การลงเรียน</a>
    <a href="addPreReq.html" class="btn btn-primary">วิชาก่อนหน้า</a>
    <a href="addFaculty.html" class="btn btn-primary">คณะ</a>
    <a href="addDepartment.html" class="btn btn-primary">ภาควิชา</a>
    <a href="addConsist.html" class="btn btn-primary">วิชาในหลักสูตร</a>
    <a href="addStudyIn.html" class="btn btn-primary">นักเรียนในหลักสูตร</a>
 </div>
</div>  
<br/>
<br/>
<?php
$cid = $_GET["cid"];
$cur_id = $_GET["cur_id"];

$query = "INSERT INTO consist_of(cid,cur_id)
VALUES ('$cid','$cur_id')";

if ($conn->query($query) === TRUE) {
echo "เพิ่มข้อมูลสำเร็จ";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}







//อาจารย์อยู่ที่เดียวกับนิสิตยังไม่ได้
?>
</body>
</html>