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

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">DBProject</a>
    </div>
    <ul class="nav navbar-nav">
     <li><a href="home.php">Home</a></li>
      <li><a href="searchStudent.html">Student</a></li>
      <li class = "active"><a href="searchInstructor.html">Instructor</a></li>
      <li><a href="searchActivity.html">Activity&Award</a></li>
       <li><a href="searchVacation.html">Vacation</a></li>
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
<br />

<div class="container">
<table class="table table-striped">
    <thead>
      <tr>
        <th>รหัสอาจารย์</th>
        <th>ชื่อ</th>
        <th>นามสกุล</th>
        <th>คณะ</th>
        <th>ภาควิชา</th>
        <th>ดูข้อมูลเพิ่มเติม</th>
      </tr>
    </thead>
<tbody>
<?php
$tid = $_GET["tid"];
$firstname = $_GET["firstname"];
$surname = $_GET["surname"];
$faculty = $_GET["faculty"];
$department = $_GET["department"];

$query = "SELECT *
          FROM person natural join instructor natural join stay_in natural join department natural join part_of natural join faculty 
          WHERE tid LIKE".'"%'.$tid.'%"'."AND firstname_th LIKE".'"%'.$firstname.'%"'."AND surname_th LIKE".'"%'.$surname.'%"'."AND dname_th LIKE".'"%'.$department.'%"'."AND fname_th LIKE".'"%'.$faculty.'%"';



$result = $conn->query($query);

if ($result->num_rows > 0) {
    // output data of each row
    $count = 0;
    while($row = $result->fetch_assoc()) {
       echo"<tr>";
       echo"<td>" . $row['tid'] . "</td>";
       echo"<td>" . $row['firstname_th'] . "</td>";
       echo"<td>" . $row['surname_th'] . "</td>";
       echo"<td>" . $row['fname_th'] . "</td>";
       echo"<td>" . $row['dname_th'] . "</td>";
       echo "<td><a href=instructor.php?tid=".$row['tid'].">ดูข้อมูลเพิ่มเติม</a></td>";
       $count = $count = 1;
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