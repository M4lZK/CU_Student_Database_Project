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
      <li><a href="searchStudent.html">Student</a></li>
      <li><a href="searchInstructor.html">Instructor</a></li>
      <li><a href="searchActivity.html">Activity&Award</a></li>
       <li><a href="searchVacation.html">Vacation</a></li>
        <li><a href="searchExchange.html">Exchange</a></li>
       <li><a href="searchCourse.html">Course</a></li>
       <li><a href="searchCurriculum.html">Curriculum</a></li>
       <li class="active"><a href="addStudent.html">Add</a></li>
      
    </ul>
  </div>
</nav>
<div class = "container">
<?php
$sid = $_GET["sid"];
$query = "SELECT national_id FROM student where sid =".'"'.$sid.'"';
$result = $conn->query($query);
$national_id = "";
if ($result->num_rows > 0) {
    // output data of each row
 
    while($row = $result->fetch_assoc()) {
       $national_id = $row['national_id'];
    }
} else {
    echo "0 results";
}

$query = "DELETE FROM person WHERE national_id = ".'"'.$national_id.'"';
if ($conn->query($query) == TRUE) {
echo "ลบข้อมูลstudentสำเร็จ";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
?>
</div>
</body>
</html>