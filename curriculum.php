<?php
  include('connect.php') ;
?>

<!DOCTYPE html>
<html>

<head>
  <title>CurriculumInformation</title>
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


<div class=container>


<?php
$a=$_GET['cur_id'];

echo "<h1> รายละเอียดข้อมูลหลักสูตร - "."$a</h1>";
echo "<br />";

?>
  
<?php
  echo "<h3><U>ข้อมูลหลักสูตร</h3></U>";
  echo "<br />";
?>

<?php
  $sql = "SELECT *
        FROM curriculum NATURAL JOIN department NATURAL JOIN manage NATURAL JOIN part_of NATURAL JOIN faculty NATURAL JOIN facultyengname
        WHERE cur_id=$a
         ; 
  ";

  $query = $conn->query($sql);

  $row =$query->fetch_array();

?>


<!-- Top level -->

<div class=container>

<div class = "row">
<div class = "col-md-5">
<?php
echo"<h4><b>ชื่อหลักสูตร:</b> ".$row['cur_name']."<h4>"; 
?> 
</div>
<div class = "col-md-5">
<?php
echo"<h4><b>ปี:</b> ".$row['year']."<h4>"; 
?> 
</div>
</div>

<div class = "row">
<div class = "col-md-5">
<?php
echo"<h4><b>ระดับปริญญา:</b> ".$row['degree']."<h4>"; 
?> 
</div>
<div class = "col-md-5">
<?php
echo"<h4><b>สาขา:</b> ".$row['dname_th']."<h4>"; 
?> 
</div>
</div>


<div class = "row">
<div class = "col-md-5">
<?php
echo"<h4><b>คณะ:</b> ".$row['fname_th']."<h4>"; 
?> 
</div>
<div class = "col-md-5">
<?php
echo"<h4><b>Faculty:</b> ".$row['fname_eng']."<h4>"; 
?> 
</div>
</div>

</div>

<!-- Top level -->


<!-- Mid level -->

<div class=container>

<div class="row">
<h3><u>รายวิชาในหลักสูตร</u></h3>
</div>

<div class="row">
<table class="table table-striped">
    <thead>
      <tr>
        <th>รหัสวิชา</th>
        <th>ชื่อย่อวิชา</th>
        <th>ชื่อเต็ม</th>
        <th>หน่วยกิต</th>
      </tr>
    </thead>
  <tbody>
      <?php
            $query2= "SELECT *
              FROM curriculum NATURAL JOIN consist_of NATURAL JOIN course NATURAL JOIN coursefullname  
              WHERE cur_id=$a  
            ";
           $result = $conn->query($query2);

           while($row = $result->fetch_assoc()) {
       echo"<tr>";
       echo"<td>" . $row['cid'] . "</td>";
       echo"<td>" . $row['c_sname'] . "</td>";
       echo"<td>" . $row['c_fname'] . "</td>";
       echo"<td>" . $row['credit'] . "</td>";
       echo "</tr>";
 }





      ?>


  </tbody>
</table>
</div>

<!-- Mid level -->

<!-- Low level -->



 


  </tbody>
</table>


</html>