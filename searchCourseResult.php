<?php

include('connect.php');

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Course</title>
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
       <li class="active"><a href="searchCourse.html">Course</a></li>
       <li><a href="searchCurriculum.html">Curriculum</a></li>
       <li><a href="addStudent.html">Add</a></li>
      
      
    </ul>
  </div>
</nav>

<div class="container">
  <h2><span class="label label-success">ผลการค้นหาข้อมูล</span></h2>       
</div>


<div class="container">
  <table class="table table-striped">
    <thead>
      <tr>
        <th>รหัสวิชา</th>
        <th>ชื่อย่อวิชา</th>
        <th>หมวด</th>
        <th>หน่วยกิต</th>
        <th>รายละเอียดเพิ่มเติม</th>
      </tr>
    </thead>
    <tbody>
      <?php
    $cid = $_GET["cid"];
    $c_sname = $_GET["c_sname"];
    $type = $_GET["type"];
    if($type == "วิชาการเรียนทั่วไป (Gen-ed)"){
      $type = "วิชาการเรียนทั่วไป";
    }
    else if($type == "วิชาภาษาทั่วไป (Gen-lang)"){
      $type = "วิชาภาษาทั่วไป";
    }
    $query = "SELECT distinct cid, c_sname, credit,type
          FROM course 
          WHERE cid LIKE".'"%'.$cid.'%"'."AND c_sname LIKE".'"%'.$c_sname.'%"'."AND type LIKE".'"%'.$type.'%"';

$count = 0;
    $result = $conn->query($query);

    if ($result->num_rows > 0) {
      // output data of each row

        while($row = $result->fetch_assoc()) {
          echo"<tr>";
          echo"<td>" . $row['cid'] . "</td>";
          echo"<td>" . $row['c_sname'] . "</td>";
          echo"<td>" . $row['type'] . "</td>";
          echo"<td>" . $row['credit'] . "</td>";
          echo "<td><a href=course.php?cid=".$row['cid'].">ดูข้อมูลเพิ่มเติม</a></td>";
          $count = $count + 1;
         }
    } else {
    
    }
    ?>
    </table>

<div class = "row">
  <?php
   echo("<h4><b>จำนวนผลการค้นหา : </b>".$count."<h4>");
   ?>
   </div>





</body>
</html>