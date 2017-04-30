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
<div class = "container">
<?php
$house_num = $_GET['housenum'];
$subdistrict = $_GET['subdistrict'];
$district = $_GET['district'];
$province = $_GET['province'];
$national_id = $_GET['national_id'];
$firstname_th = $_GET['firstname_th'];
$surname_th = $_GET['surname_th'];
$nationality = $_GET['nationality'];
$gender = $_GET['sex'];
$firstname_en = $_GET['firstname_en'];
$surname_en = $_GET['surname_en'];
$phone_num = $_GET['phone'];
$e_mail = $_GET['e_mail'];
$date_of_birth = $_GET['bday'];
$building = $_GET['building'];
$road = $_GET['road'];
$alley = $_GET['alley'];
$postal_code = $_GET['postal'];

$query = "UPDATE person SET firstname_th = ".'"'.$firstname_th.'"'.
", surname_th = ".'"'.$surname_th.'"'.
", firstname_en = ".'"'.$firstname_en.'"'.
", surname_th = ".'"'.$surname_th.'"'.
", nationality = ".'"'.$nationality.'"'.
", gender = ".'"'.$gender.'"'.
", phone_num = ".'"'.$phone_num.'"'.
", e_mail = ".'"'.$e_mail.'"'.
", date_of_birth = ".'"'.$date_of_birth.'" where national_id = '.'"'.$national_id.'"';

if ($conn->query($query) == TRUE) {

} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$query = "UPDATE live_in SET house_num = ".'"'.$house_num.'"'.
", subdistrict = ".'"'.$subdistrict.'"'.
", district = ".'"'.$district.'"'.
", province = ".'"'.$province.'" where national_id = '.'"'.$national_id.'"';

if ($conn->query($query) == TRUE) {

} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$query = "UPDATE address SET road = ".'"'.$road.'"'.
", alley = ".'"'.$alley.'"'.
", building = ".'"'.$building.'"'.
", postal_code = ".'"'.$postal_code.'" WHERE house_num = '.'"'."$house_num".'"'.
"AND subdistrict = ".'"'."$subdistrict".'"'.
"AND district = ".'"'."$district".'"'.
"AND province = ".'"'."$province".'"';

if ($conn->query($query) == TRUE) {
echo "แก้ไขข้อมูลสำเร็จ";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
?>
</div>
</body>
</html>