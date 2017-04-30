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
        <li><a href="searchExchange.html">Exchange</a></li>
       <li><a href="searchCourse.html">Course</a></li>
       <li class="active"><a href="searchCurriculum.html">Curriculum</a></li>
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
        <th>รหัสหลักสูตร</th>
        <th>ชื่อหลักสูตร</th>
        <th>ปี</th>
        <th>คณะ</th>
        <th>ภาควิชา</th>
        <th>ดูข้อมูลเพิ่มเติม</th>
      </tr>
    </thead>
    <tbody>
      <?php
    $cur_id = $_GET["cur_id"];
    $cur_name = $_GET["cur_name"];
    $cur_year = $_GET["cur_year"];
    $cur_dep = $_GET["cur_dep"];
    $cur_faculty = $_GET["cur_faculty"];
    $query = "SELECT *
          FROM curriculum NATURAL JOIN manage NATURAL JOIN department NATURAL JOIN part_of NATURAL JOIN faculty
          WHERE cur_id LIKE".'"%'.$cur_id.'%"'."AND cur_name LIKE".'"%'.$cur_name.'%"'."AND year LIKE".'"%'.$cur_year.'%"'."AND dname_th LIKE".'"%'.$cur_dep.'%"'."AND fname_th LIKE".'"%'.$cur_faculty.'%"';


    $result = $conn->query($query);

    if ($result->num_rows > 0) {
      // output data of each row
      $count = 0;
        while($row = $result->fetch_assoc()) {
          echo"<tr>";
          echo"<td>" . $row['cur_id'] . "</td>";
          echo"<td>" . $row['cur_name'] . "</td>";
          echo"<td>" . $row['year'] . "</td>";
           echo"<td>" . $row['fname_th'] . "</td>";
          echo"<td>" . $row['dname_th'] . "</td>";
          echo "<td><a href=curriculum.php?cur_id=".$row['cur_id'].">ดูข้อมูลเพิ่มเติม</a></td>";
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