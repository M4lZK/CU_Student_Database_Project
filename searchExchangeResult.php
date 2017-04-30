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
       <li><a href="searchVacation.html">Vacation</a></li>
        <li class="active"><a href="searchExchange.html">Exchange</a></li>
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
        <th>รหัสการแลกเปลี่ยน</th>
        <th>รหัสนิสิต</th>
        <th>ชื่อ</th>
        <th>นามสกุล</th>
        <th>ประเทศ</th>
        <th>ชื่อโครงการ</th>
        <th>วันเริ่มต้น</th>
        <th>วันสิ้นสุด</th>
      </tr>
    </thead>
    <tbody>
      <?php
    $eid = $_GET["eid"];
    $sid = $_GET["sid"];
    $country = $_GET["country"];
    $name = $_GET["name"];
    $date_start = $_GET["date_start"];
    $date_end = $_GET["date_end"];

    $data = array();
    $query = "SELECT *
          FROM exchange NATURAL JOIN student NATURAL JOIN Person
          WHERE eid LIKE".'"%'.$eid.'%"'."AND sid LIKE".'"%'.$sid.'%"'."AND country LIKE".'"%'.$country.'%"'."AND e_name LIKE".'"%'.$name.'%"'."AND date_start LIKE".'"%'.$date_start.'%"'."AND date_end LIKE".'"%'.$date_end.'%"';


    $result = $conn->query($query);

    if ($result->num_rows > 0) {
      // output data of each row
      $count = 0;
        while($row = $result->fetch_assoc()) {
          echo"<tr>";
          echo"<td>" . $row['eid'] . "</td>";
          echo"<td>" . $row['sid'] . "</td>";
          echo"<td>" . $row['firstname_th'] . "</td>";
          echo"<td>" . $row['surname_th'] . "</td>";
          echo"<td>" . $row['country'] . "</td>";
          echo"<td>" . $row['e_name'] . "</td>";
          echo"<td>" . $row['date_start'] . "</td>";
          echo"<td>" . $row['date_end'] . "</td>";
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