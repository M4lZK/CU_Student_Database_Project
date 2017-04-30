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
      <li  class="active"><a href="searchActivity.html">Activity&Award</a></li>
       <li><a href="searchVacation.html">Vacation</a></li>
        <li><a href="searchExchange.html">Exchange</a></li>
       <li><a href="searchCourse.html">Course</a></li>
       <li><a href="searchCurriculum.html">Curriculum</a></li>
       <li><a href="addStudent.html">Add</a></li>
      
      
    </ul>
  </div>
</nav>
   <?php
    $aid = $_GET["aid"];
    $data = array();
    $query = "SELECT *
          FROM activityandaward
          WHERE aid =".'"'.$aid.'"';


    $result = $conn->query($query);

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $name = $row['name'];
            $year = $row['year'];
            $prize = $row['prize'];
            $national_id = $row['national_id'];
            $sid = $row['sid'];
         }
    } else {
       echo "0 results";
    }
    ?>

<div class="container">
<div class="row">
<?php
echo"<h2>ข้อมูลกิจกรรมรหัส -"." $aid</h2>";
?>
</div>

<div class = "row">
<div class = "col-md-6">
<?php
echo"<h4><b>รหัสกิจกรรม:</b> "."$aid<h4>"; 
?> 
</div>
</div>
    
<div class = "row">
<div class = "col-md-6">
<?php
echo"<h4><b>ชิ่อกิจกรรม/รางวัล:</b> "."$name<h4>"; 
?> 
</div>
</div>

<div class = "row">
    <h3><u>นิสิตที่เข้าร่วม  </u></h3>
</div>
  <table class="table table-striped">
    <thead>
      <tr>
        <th>รหัสนิสิต</th>
        <th>ชื่อ</th>
        <th>นามสกุล</th>
        <th>รางวัล/ตำแหน่ง ที่ได้รับ</th>
        <th>รายละเอียดเพิ่มเติม</th>
      </tr>
    </thead>
    <tbody>
      <?php
        $aid = $_GET["aid"];
        $data = array();
        $query = "SELECT sid,firstname_th,surname_th,prize
          FROM student NATURAL JOIN activityandaward  NATURAL JOIN person
          WHERE aid =".'"'.$aid.'"'."AND year LIKE".'"%'.$year.'%"';;


        $result = $conn->query($query);

        if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            echo"<tr>";
            echo"<td>" . $row['sid'] . "</td>";
            echo"<td>" . $row['firstname_th'] . "</td>";
            echo"<td>" . $row['surname_th'] . "</td>";
            echo"<td>" . $row['prize'] . "</td>";
            echo "<td><a href=student.php?sid=".$row['sid'].">ดูข้อมูลเพิ่มเติม</a></td>";
            }
        } else {
            echo "0 results";
        }   
        ?>
    </tbody>
  </table>
</div>





</body>
</html>