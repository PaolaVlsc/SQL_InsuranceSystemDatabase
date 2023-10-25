<html>

<head>
    <title>General Insurancel</title>
    <center><img src="images/logo.png" height="180" width="200"></center>
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

        $sql = " call getPayment( " . $_POST['input_afm'] . ", '" . $_POST['input_date'] . "');";



        $res = mysqli_query($mysqli, $sql);
        if ($res == TRUE) {
            echo "<center><table border = '1'>";
            echo "<tr>
            <th>Number of contracts</th>
            <th>Montly Cost</th>
            </tr>";

            while ($newArray = mysqli_fetch_array($res, MYSQLI_BOTH)) {
                $input_afm = $newArray['number_of_contracts'];
                $input_date = $newArray['monthly_cost'];

                echo "<tr align=\"center\"><td>" . $input_afm . "</td><td>" . $input_date . "</td></tr>";
            }

            echo "</table></center>";
        } else {
            echo "Error: Cannot retrieve client' data";
        }

        mysqli_close($mysqli);
        //echo "Hello " . $_POST["stud_am"] . " " . $_POST["stud_name"] . " " . $_POST["stud_semester"];
    }


    ?>
    <center>
    <p>


    </p>

    <a href="http://localhost/General%20Insurance/clientoption.html">Choose another client or date</a>
    <p><a href="http://localhost/General%20Insurance/">Go to main page</a></p>
</center>

</body>

</html>