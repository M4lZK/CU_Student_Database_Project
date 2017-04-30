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

<div class="container">
<h2><span class="label label-success">ผลการค้นหาข้อมูล</span></h2>
</div>
<br />

<div class="container">
<table class="table table-striped">
    <thead>
      <tr>
        <th>รหัสนิสิต</th>
        <th>ชื่อ</th>
        <th>นามสกุล</th>
        <th>คณะ</th>
        <th>ภาควิชา</th>
        <th>ชั้นปี</th>
        <th>ปีที่เข้าศึกษา</th>
        <th>สภาพนิสิต</th>
        <th>ดูข้อมูลเพิ่มเติม</th>
      </tr>
    </thead>
<tbody>
<?php
$sid = $_GET["sid"];
$firstname = $_GET["firstname"];
$surname = $_GET["surname"];
$faculty = $_GET["faculty"];
$department = $_GET["department"];
$year_enrolled = $_GET["year_enrolled"];
$status = $_GET["status"];

$query = "SELECT sid,firstname_th,surname_th,fname_th,dname_th,year(curdate())-student.year_enrolled as 'year',year_enrolled,status
          FROM student NATURAL JOIN person NATURAL JOIN stay_in NATURAL JOIN department NATURAL JOIN part_of NATURAL JOIN faculty
          WHERE sid LIKE".'"%'.$sid.'%"'."AND firstname_th LIKE".'"%'.$firstname.'%"'."AND surname_th LIKE".'"%'.$surname.'%"'."AND dname_th LIKE".'"%'.$department.'%"'."AND year_enrolled LIKE".'"%'.$year_enrolled.'%"'."AND status LIKE".'"%'.$status.'%"'."AND fname_th LIKE".'"%'.$faculty.'%"';



$result = $conn->query($query);

if ($result->num_rows > 0) {
    // output data of each row
    $count = 0;
    while($row = $result->fetch_assoc()) {
       echo"<tr>";
       echo"<td>" . $row['sid'] . "</td>";
       echo"<td>" . $row['firstname_th'] . "</td>";
       echo"<td>" . $row['surname_th'] . "</td>";
       echo"<td>" . $row['fname_th'] . "</td>";
       echo"<td>" . $row['dname_th'] . "</td>";
       if($row['status'] == "ปกติ"){
       echo"<td>" . $row['year'] . "</td>";
       }
       else{
         echo"<td>" . "-" . "</td>";
       }
       echo"<td>" . $row['year_enrolled'] . "</td>";
       echo"<td>" . $row['status'] . "</td>";
      echo "<td><a href=student.php?sid=".$row['sid'].">ดูข้อมูลเพิ่มเติม</a></td>";
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