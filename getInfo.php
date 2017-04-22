
<?php

include('connect.php');

$query = "SELECT * FROM STUDENT" or die("Error :" . mysqli_error());

$result = $conn->query($query);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        $sid = $row["sid"];
        $status = $row["status"];
        $year_enrolled = $row["year_enrolled"];
        echo ($sid);
        echo($status);
        echo($year_enrolled);
    }
} else {
    echo "0 results";
}
$conn->close();

?>


