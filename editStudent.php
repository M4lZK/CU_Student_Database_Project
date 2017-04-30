<?php

include('connect.php');

?>

<?php
$sid = $_GET["sid"];
$query = "SELECT *
FROM student natural join person natural join live_in natural join address
WHERE sid = ".'"'.$sid.'"';
$result = $conn->query($query);
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        $house_num = $row['house_num'];
        $subdistrict = $row['subdistrict'];
        $district = $row['district'];
        $province = $row['province'];
        $national_id = $row['national_id'];
        $firstname_th = $row['firstname_th'];
        $surname_th = $row['surname_th'];
        $nationality = $row['nationality'];
        $gender = $row['gender'];
        $firstname_en = $row['firstname_en'];
        $surname_en = $row['surname_en'];
        $phone_num = $row['phone_num'];
        $e_mail = $row['e_mail'];
        $date_of_birth = $row['date_of_birth'];
        $building = $row['building'];
        $road = $row['road'];
        $alley = $row['alley'];
        $postal_code = $row['postal_code'];    
    }
} else {
    echo "0 results";
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Edit</title>
  <meta charset="utf-8">
  <meta name="viewport" content="wnameth=device-wnameth, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluname">
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
<div class = "row">
<h2><span class="label label-primary">เพิ่มข้อมูล</span></h2>
<br/>

<div class = "row">
<br />
<h3> แก้ไขข้อมูลส่วนตัว </h3>
<br />
<form method="GET" action="editStudentAction.php">
    <div class="form-group">
    <div class="row">
      <div class="col-md-6">
        <label for="national_id">รหัสบัตรประชาชน</label>
        <input class="form-control" name="national_id" type="text" <?php echo "value = ".'"'.$national_id.'"';?>>
      </div>
    </div>

     <div class="row">
      <div class="col-md-3">
        <label for="firstname_th">ชื่อ</label>
        <input class="form-control" name="firstname_th" type="text" <?php echo "value = ".'"'.$firstname_th.'"';?>>
      </div>
      <div class="col-md-3">
        <label for="surname_th">นามสกุล</label>
        <input class="form-control" name="surname_th" type="text" <?php echo "value = ".'"'.$surname_th.'"';?>>
      </div>
    </div>

    <div class="row">
      <div class="col-md-3">
        <label for="firstname_en">Name</label>
        <input class="form-control" name="firstname_en" type="text" <?php echo "value = ".'"'.$firstname_en.'"';?>>
      </div>
      <div class="col-md-3">
        <label for="surname_en">Surname</label>
        <input class="form-control" name="surname_en" type="text" <?php echo "value = ".'"'.$surname_en.'"';?>>
      </div>
    </div>
    <br/>
    <div class ="row">
      <div class= "col-md-1">
         วันเกิด
  <input type="date" name="bday" <?php echo "value = ".'"'.$date_of_birth.'"';?>>
    </div>
    </div>
    <br/>



    <div class="row">
      <div class="col-md-2">
        <label for="nationality">สัญชาติ</label>
        <input class="form-control" name="nationality" type="text" <?php echo "value = ".'"'.$nationality.'"';?>>
      </div>
     <div class= "col-md-1">
   <div class="form-group">
  <label for="sex">เพศ</label>
  <select class="form-control" name="sex" <?php echo "value = ".'"'.$gender.'"';?>>
    <option value ='ชาย' selected>ชาย</option>
    <option value ='หญิง'>หญิง</option>
  </select>
  </div>
    </div> 
    </div>

    <div class="row">
    <div class="col-md-3">
        <label for="e_mail">E-mail</label>
        <input class="form-control" name="e_mail" type="text" <?php echo "value = ".'"'.$e_mail.'"';?>>
      </div>
      <div class="col-md-3">
        <label for="phone">หมายเลขโทรศัพท์</label>
        <input class="form-control" name="phone" type="text" <?php echo "value = ".'"'.$phone_num.'"';?>>
      </div>
    </div>
    
<div class="row">
    <div class="col-md-2">
        <label for="housenum">บ้านเลขที่</label>
        <input class="form-control" name="housenum" type="text" <?php echo "value = ".'"'.$house_num.'"';?>>
      </div>

      <div class="col-md-1">
        <label for="alley">ซอย</label>
        <input class="form-control" name="alley" type="text" <?php echo "value = ".'"'.$alley.'"';?>>
      </div>
      <div class="col-md-2">
        <label for="building">ตึก/อาคาร</label>
        <input class="form-control" name="building" type="text" <?php echo "value = ".'"'.$building.'"';?>>
      </div>
    </div>

    <div class="row">
    <div class="col-md-2">
        <label for="road">ถนน</label>
        <input class="form-control" name="road" type="text" <?php echo "value = ".'"'.$road.'"';?>>
      </div>
      <div class="col-md-2">
        <label for="subdistrict">แขวง/ตำบล</label>
        <input class="form-control" name="subdistrict" type="text" <?php echo "value = ".'"'.$subdistrict.'"';?>>
      </div>
      <div class="col-md-2">
        <label for="district">เขต/อำเภอ</label>
        <input class="form-control" name="district" type="text" <?php echo "value = ".'"'.$district.'"';?>>
      </div>
    </div>

    <div class="row">
    <div class="col-md-2">
        <label for="province">จังหวัด</label>
        <input class="form-control" name="province" type="text" <?php echo "value = ".'"'.$province.'"';?>>
      </div>
      <div class="col-md-2">
        <label for="postal">หมายเลขไปรษณีย์</label>
        <input class="form-control" name="postal" type="text" <?php echo "value = ".'"'.$postal_code.'"';?>>
      </div>
    </div>
    <br />
    <div class="row">
     <div class="col-md-4">
 <input type="submit" value="Submit">
 <input type="reset" value="Reset">
    </div>
</div> 


    </div>
    </div>
  </form>
</div>

</div>
</div>

<br />

  


</body>
</html>
