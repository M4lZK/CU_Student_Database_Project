<?php

include('connect.php');

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Activity</title>
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
       <li class="active"><a href="searchVacation.html">Vacation</a></li>
        <li><a href="searchExchange.html">Exchange</a></li>
       <li><a href="searchCourse.html">Course</a></li>
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
        <th>รหัสการลาหยุด</th>
        <th>รหัสนิสิต</th>
        <th>ชื่อ</th>
        <th>นามสกุล</th>
        <th>วันเริ่มต้น</th>
        <th>วันสิ้นสุด</th>
      </tr>
    </thead>
    <tbody>
      <?php
    $vid = $_GET["vid"];
    $sid = $_GET["sid"];
    $date_start = $_GET["date_start"];
    $date_end = $_GET["date_end"];

    $data = array();
    $query = "SELECT *
          FROM vacation NATURAL JOIN student NATURAL JOIN Person
          WHERE vid LIKE".'"%'.$vid.'%"'."AND sid LIKE".'"%'.$sid.'%"'."AND v_date_start LIKE".'"%'.$date_start.'%"'."AND v_date_end LIKE".'"%'.$date_end.'%"';


    $result = $conn->query($query);
    $count = 0;
    if ($result->num_rows > 0) {
      // output data of each row
        while($row = $result->fetch_assoc()) {
          echo"<tr>";
          echo"<td>" . $row['vid'] . "</td>";
          echo"<td>" . $row['sid'] . "</td>";
          echo"<td>" . $row['firstname_th'] . "</td>";
          echo"<td>" . $row['surname_th'] . "</td>";
          echo"<td>" . $row['v_date_start'] . "</td>";
          echo"<td>" . $row['v_date_end'] . "</td>";
          $count = $count + 1;
         }
    } else {
       echo "0 results";
    }
    ?>
    </tbody>
  </table>
  <div class = "row">
  <?php
   echo("<h4><b>จำนวนผลการค้นหา : </b>".$count."<h4>");
   ?>
   </div>
</div>
    


</body>
</html>