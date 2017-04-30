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


 <?php
    $cid = $_GET["cid"];
    $query = "SELECT *
          FROM course NATURAL JOIN coursefullname
          WHERE cid =".'"'.$cid.'"';


    $result = $conn->query($query);
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $c_fname = $row['c_fname'];
            $credit = $row['credit'];
            $type = $row['type'];
            $c_detail = $row['c_detail'];
            $c_sname = $row['c_sname'];
         }
    } else {
       echo "0 results";
    }
    ?>

<div class="container">
    <div class = "row">
    <h2><span class="label label-warning">Course Info</span>
    </div>
    <div class = "row">
    </h2>
    <h3><b>รหัสรายวิชา :  </b>
    <?php
        echo "$cid";
    ?>
    </h3>
    </div>
    <div class = "row">
    <h3><b>ชื่อเต็ม :  </b>
    <?php
        echo "$c_fname";
    ?>
    </h3>
    </div>
    <div class = "row">
    <h3><b>ชื่อย่อ :  </b>
    <?php
        echo "$c_sname";
    ?>
    </h3>
    </div>
    <div class = "row">
    <h3><b>จำนวนหน่วยกิต :  </b>
    <?php
        echo "$credit";
    ?>
    </h3>
    </div>
    <div class = "row">
    <h3><b>เนื้อหารายวิชา :  </b>
    <?php
        echo "$c_detail";
    ?>
    </h3>
    </div>

    <div class = "row">
    <h3><u><b>รายชื่อนิสิตที่ลงเรียน  </b></u>
    </h3>
    </div>
    <br/>
<div class="row">
<table class="table table-striped">
    <thead>
      <tr>
        <th>รหัสนิสิต</th>
        <th>ชื่อ</th>
        <th>นามสกุล</th>
        <th>ตอนเรียน</th>
        <th>ปีการศึกษา</th>
        <th>ภาคการเรียน</th>
        <th>ดูข้อมูลเพิ่มเติม</th>
      </tr>
    </thead>
<tbody>
     <?php
    $query = "SELECT sec_num,sid,year,semester,firstname_th,surname_th FROM course NATURAL JOIN section natural join take natural join person natural join student
          WHERE cid =".'"'.$cid.'"';


    $result = $conn->query($query);

    if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
     echo"<tr>";
       echo"<td>" . $row['sid'] . "</td>";
       echo"<td>" . $row['firstname_th'] . "</td>";
       echo"<td>" . $row['surname_th'] . "</td>";
       echo"<td>" . $row['sec_num'] . "</td>";
       echo"<td>" . $row['year'] . "</td>";
       echo"<td>" . $row['semester'] . "</td>";
        echo "<td><a href=student.php?sid=".$row['sid'].">ดูข้อมูลเพิ่มเติม</a></td>";
    }
}
    ?>
</tbody>
</table>
</div>








</body>
</html>