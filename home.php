<?php  
$hostname="localhost";  
$username="root";  
$password="";  
$dbname = "databaseproject";  
$conn = new mysqli($hostname, $username, $password, $dbname); 
// Check connection
if (!$conn) {
    die("Connection failed: ".mysqli_connect_error());
}
 mysqli_query($conn,"SET NAMES 'utf8' ");
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">DBProject</a>
    </div>
    <ul class="nav navbar-nav">
       <li class="active"><a href="home.php">Home</a></li>
      <li><a href="searchStudent.html">Student</a></li>
      <li><a href="searchActivity.html">Activity&Award</a></li>
       <li><a href="searchCourse.html">Course</a></li>
       <li><a href="searchCurriculum.html">Curriculum</a></li>
        <li><a href="addStudent.html">Add</a></li>
      
    </ul>
  </div>
</nav>

<div class = "container">


<h1>ยินดีต้อนรับเข้าสู่ระบบฐานข้อมูลนิสิต</h1>
<?php

$result = $conn->query("SELECT year(curdate())-student.year_enrolled as 'SYear', COUNT(*) as 'Person' FROM student WHERE status = 'ปกติ' GROUP BY SYear");

?>

<h1>Graph: Number of student</h1>
 
		<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
		
		<table class="table" id="student">
			<thead>
				<tr>
					<th></th>
					<th>Person</th>
				</tr>
			</thead>
			<tbody>
				<?php
					foreach($result as $row) {  
echo "<tr>"; 
echo "<td> ปี" . $row['SYear'] . "</td>";   
echo "<td>" . $row['Person'] . "</td>";  
echo "</tr>";  
}
				?>
			
			</tbody>
		</table>
 
		
	<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/data.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>

  	<script>
	
	$(function () {
				
		$('#container').highcharts({
			data: {
				//กำหนดให้ ตรงกับ id ของ table ที่จะแสดงข้อมูล
				table: 'student'
			},
			chart: {
				plotBackgroundColor: null,
								plotBorderWidth: null,
								plotShadow: false,
								type: 'pie'
			},
			title: {
				text: 'Number of Student'
			},
			yAxis: {
				allowDecimals: false,
				title: {
					text: 'Person'
				}
			},
			
			tooltip: {
				formatter: function () {
					return '<b> ' + this.point.name + '</b><br/>' +
						this.point.y; + ' ' + this.point.name.toLowerCase();
				}
			},
			plotOptions: {
								pie: {
									allowPointSelect: true,
									cursor: 'pointer',
									dataLabels: {
										enabled: true,
										//format: '<b>{point.name}</b>: {point.percentage:.1f} %',
										format: '<b>{point.name}</b>: {point.y} คน',
										style: {
											color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
										}
									}
								}
							}
		});
	});
	
	</script>

	<h1>Graph: Number of Activity and Award</h1>
	<div id="container-B" style="min-width: 310px; height: 400px; margin: 0 auto"></div>

	<?php

$result = $conn->query("SELECT year, COUNT(*) as 'Unit' FROM activityandaward GROUP BY year");

?>


 
		
		<table class="table" id="activityandaward">
			<thead>
				<tr>
					<th></th>
					<th>Avtivity and Award</th>
				</tr>
			</thead>
			<tbody>
				<?php
					foreach($result as $row) {  
echo "<tr>"; 
echo "<td> ปี" . $row['year'] . "</td>";   
echo "<td>" . $row['Unit'] . "</td>";  
echo "</tr>";  
}
				?>
			
			</tbody>
		</table>

  	<script>
	
	$(function () {
				
		$('#container-B').highcharts({
			data: {
				//กำหนดให้ ตรงกับ id ของ table ที่จะแสดงข้อมูล
				table: 'activityandaward'
			},
			chart: {
				plotBackgroundColor: null,
								plotBorderWidth: null,
								plotShadow: false,
								type: 'pie'
			},
			title: {
				text: 'Number of Activity and Award'
			},
			yAxis: {
				allowDecimals: false,
				title: {
					text: 'ea'
				}
			},
			
			tooltip: {
				formatter: function () {
					return '<b> ' + this.point.name + '</b><br/>' +
						this.point.y; + ' ' + this.point.name.toLowerCase();
				}
			},
			plotOptions: {
								pie: {
									allowPointSelect: true,
									cursor: 'pointer',
									dataLabels: {
										enabled: true,
										//format: '<b>{point.name}</b>: {point.percentage:.1f} %',
										format: '<b>{point.name}</b>: {point.y} คน',
										style: {
											color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
										}
									}
								}
							}
		});
	});
	
	</script>

 </div>
</body>
</html>
