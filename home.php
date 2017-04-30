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
	  <script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/data.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
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


<h1>ยินดีต้อนรับเข้าสู่ระบบฐานข้อมูลนิสิต</h1>
<?php

$result = $conn->query("SELECT year(curdate())-student.year_enrolled as 'SYear',grade,credit,(sum(grade*credit)/sum(credit)) as 'gpax', count(sid) as 'Person' FROM student NATURAL JOIN take NATURAL JOIN course group by SYear");

?>

<h1>Graph: Number of student</h1>
 
		<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
		
		<table class="table table-striped" id="student1">
			<thead>
				<tr>
					<th></th>
					<th>จำนวนคน</th>
					<th>เกรดเฉลี่ย</th>
				</tr>
			</thead>
			<tbody>
				<?php
					foreach($result as $row) {  
echo "<tr>"; 
echo "<td> ปี" . $row['SYear'] . "</td>";   
echo "<td>" . $row['Person'] . "</td>";
echo "<td>" . $row['gpax'] . "</td>";  
echo "</tr>";  
}
				?>
			
			</tbody>
		</table>

  	<script>
	
	$(function () {
				
		$('#container').highcharts({
			data: {
				//กำหนดให้ ตรงกับ id ของ table ที่จะแสดงข้อมูล
				table: 'student1'
			},
			chart: {
				type: 'column'
			},
			title: {
				text: 'จำนวนนิสิตและเกรดเฉลี่ย'
			},
			yAxis: {
				allowDecimals: false,
				title: {
					text: 'คน'
				}
			},
			
			tooltip: {
				formatter: function () {
					return '<b> ' + this.series.name + '</b><br/>' +
						this.point.y; + ' ' + this.point.name.toLowerCase();
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


 
		
		<table class="table table-striped" id="activityandaward">
			<thead>
				<tr>
					<th></th>
					<th>จำนวนรางวัลและกิจกรรม</th>
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
				text: 'กราฟแสดงจำนวนกิจกรรมและรางวัล'
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
									allowPointSELECT: true,
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

	<h1>Graph: GPAX</h1>
	<div id="cont" style="min-width: 310px; height: 400px; margin: 0 auto"></div>

	<?php

$result = $conn->query("SELECT year,COUNT(CASE WHEN gpax BETWEEN 0 AND 1 THEN 1 END ) as '<1', 
count(CASE WHEN gpax BETWEEN 1.000000 AND 1.5 THEN 1 END) as '1-1.5',
count(CASE WHEN gpax BETWEEN 1.5000001 AND 2 THEN 1 END) as '1.5-2',
count(CASE WHEN gpax BETWEEN 2.0000001 AND 2.5THEN 1 END) as '2-2.5',
count(CASE WHEN gpax BETWEEN 2.5000001 AND 3 THEN 1 END) as '2.5-3',
count(CASE WHEN gpax BETWEEN 3.0000001 AND 3.5 THEN 1 END) as '3-3.5',
count(CASE WHEN gpax BETWEEN 3.5000001 AND 4 THEN 1 END) as '3.5-4'
from ((SELECT sid,year(curdate()) - year_enrolled as 'year', ((sum(grade*credit))/(sum(credit))) as 'gpax' 
	 from student natural join take natural join course group by sid) as student2) 
group by year");

?>

		<table class="table table-striped" id='student2'>
			<thead>
				<tr>
					<th></th>
					<th><1</th>
					<th>1-1.5</th>
					<th>1.5-2</th>
					<th>2-2.5</th>
					<th>2.5-3</th>
					<th>3-3.5</th>
					<th>3.5-4</th>
				</tr>
			</thead>
			<tbody>
				<?php
					foreach($result as $row) {  
echo "<tr>"; 
echo "<td> ปี" . $row['year'] . "</td>";  
echo "<td>" . $row['<1'] . "</td>";   
echo "<td>" . $row['1-1.5'] . "</td>";
echo "<td>" . $row['1.5-2'] . "</td>"; 
echo "<td>" . $row['2-2.5'] . "</td>"; 
echo "<td>" . $row['2.5-3'] . "</td>";
echo "<td>" . $row['3-3.5'] . "</td>";  
echo "<td>" . $row['3.5-4'] . "</td>"; 

echo "</tr>";  
}
				?>
			
			</tbody>
		</table>

  	<script>
	
	$(function () {
				
		$('#cont').highcharts({
			data: {
				//กำหนดให้ ตรงกับ id ของ table ที่จะแสดงข้อมูล
				table: 'student2'
			},
			chart: {
				type: 'column'
			},
			title: {
				text: 'Number Student in range of GPAX'
			},
			yAxis: {
				allowDecimals: false,
				title: {
					text: 'คน'
				}
			},
			
			tooltip: {
				formatter: function () {
					return '<b> ' + this.series.name + '</b><br/>' +
						this.point.y; + ' ' + this.point.name.toLowerCase();
				}
			}
			
		});
	});
	
	</script>

 </div>
</body>
</html>
