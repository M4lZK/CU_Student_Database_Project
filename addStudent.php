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
$national_id = $_GET["national_id"];
$firstname_th = $_GET["firstname_th"];
$surname_th = $_GET["surname_th"];
$firstname_en = $_GET["firstname_en"];
$surname_en = $_GET["surname_en"];
$date_of_birth = $_GET["bday"];
$nationality = $_GET["nationality"];
$gender = $_GET["sex"];
$e_mail = $_GET["e_mail"];
$phone_num = $_GET["phone"];
$house_num = $_GET["housenum"];
$alley = $_GET["alley"];
$building = $_GET["building"];
$road = $_GET["road"];
$subdistrict = $_GET["subdistrict"];
$district = $_GET["district"];
$province = $_GET["province"];
$postal_code = $_GET["postal"];
$sid = $_GET["sid"];
$faculty = $_GET["faculty"];
$department = $_GET["department"];
$year_enrolled = $_GET["year_enrolled"];
$status = $_GET["status"];
$bscore = $_GET["bscore"];
$query = "INSERT INTO person(firstname_th,surname_th,nationality,gender,national_id,firstname_en,surname_en,phone_num,e_mail,date_of_birth)
VALUES ('$firstname_th','$surname_th','$nationality','$gender','$national_id','$firstname_en','$surname_en','$phone_num','$e_mail','$date_of_birth')";

if ($conn->query($query) === TRUE) {
    echo "เพิ่มข้อมูลPersonสำเร็จ";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$query = "INSERT INTO Student(sid,status,year_enrolled,Behaviour_score,national_id)
VALUES ('$sid','$status','$year_enrolled','$bscore','$national_id')";

if ($conn->query($query) === TRUE) {
    echo "เพิ่มข้อมูลStudentสำเร็จ";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$query = "INSERT INTO Address(house_num,building,road,alley,subdistrict,district,province,postal_code)
VALUES ('$house_num','$building','$road','$alley','$subdistrict','$district','$province','$postal_code')";

if ($conn->query($query) === TRUE) {
    echo "เพิ่มข้อมูลAddressสำเร็จ";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
?>
</body>
</html>