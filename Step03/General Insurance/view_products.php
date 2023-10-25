<html>

<head>
    <title>General Insurance</title>
    <center><img src="images/logo.png" height = "180" width = "200"></center>
</head>

<body>
<h1>
      <center>General Insurance</center>
    </h1>
    <?php
    echo "<body style='background-color:rgb(241, 229, 247)'>";
    $mysqli = mysqli_connect("localhost", "paola", "1234", "general_insurance");
    if (mysqli_connect_errno()) {
        printf("Connect failed: %s\n", mysqli_connect_errno());
        exit();
    } else {

        $sql = "SELECT * FROM insurance";
        //echo $sql;

        $res = mysqli_query($mysqli, $sql);
        if ($res == TRUE) {
            echo "<center><table border = '1'>";
            echo "<tr>
            <th>Insurance Code</th>
            <th>Insurance name</th>
            <th>Annual cost</th>
            <th>Minimum duration</th>
            </tr>";
            while ($newArray = mysqli_fetch_array($res, MYSQLI_BOTH)) {
                $insurance_code = $newArray['insurance_code'];
                $insurance_name = $newArray['insurance_name'];
                $annual_cost = $newArray['annual_cost'];
                $min_duration = $newArray['min_duration'];

                echo "<tr><td><center>" . $insurance_code . "</center></td><td><center>" . $insurance_name . "</center></td><td><center>" . $annual_cost . "</center></td><td><center>" . $min_duration . "</center></td></tr>";

            }

            echo "</table></center>";
        } else {
            echo "Error: Cannot retrieve insurance table data";
        }

        mysqli_close($mysqli);
    }


    ?>
    <p>


    </p>
    <a href="http://localhost/General%20Insurance/"><center>Go to main page</center></a>

</body>

</html>