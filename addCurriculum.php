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
       <li><a href="home.html">Home</a></li>
      <li><a href="searchStudent.html">Student</a></li>
      <li><a href="searchActivity.html">Activity&Award</a></li>
       <li><a href="searchCourse.html">Course</a></li>
       <li><a href="searchCurriculum.html">Curriculum</a></li>
        <li class ="active"><a href="addStudent.html">Add</a></li>
      
    </ul>
  </div>
</nav>

<div class="container">
<div class = "row">
<h2><span class="label label-primary">เพิ่มข้อมูล</span></h2>
<br/>
<div class = "row">
<div class="btn-group btn-group-justified">
 <a href="addStudent.html" class="btn btn-primary">Student</a>
  <a href="#" class="btn btn-primary">Instructor</a>
  <a href="#" class="btn btn-primary">Course</a>
  <a href="#" class="btn btn-primary">Section</a>
  <a href="addCurriculum.html" class="btn btn-primary">Curriculum</a>
  <a href="#" class="btn btn-primary">Activity&Award</a>
  <a href="#" class="btn btn-primary">Study Abroad</a>
  <a href="#" class="btn btn-primary">Vacation</a>
</div>
</div>
<br/>
<br/>
<?php
$cur_id = $_GET["cur_id"];
$year = $_GET["year"];
$credit = $_GET["credit"];
$credit_ge = $_GET["credit_ge"];
$credit_gl = $_GET["credit_gl"];
$credit_fe = $_GET["credit_fe"];
$query = "INSERT INTO curriculum(cur_id,year,total_credit,total_num_gened,total_num_genlang,total_num_freeelect)
VALUES ($cur_id,$year,$credit,$credit_ge,$credit_gl,$credit_fe)";

if ($conn->query($query) === TRUE) {
    echo "เพิ่มข้อมูลสำเร็จ";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
?>
</body>
</html>