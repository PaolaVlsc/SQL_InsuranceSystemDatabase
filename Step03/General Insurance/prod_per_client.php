<html>

<head>
    <title>General Insurance</title>
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

        echo "<pre><h3><center>" . $_POST['products'] . "</center></h3></pre>";

        $sql = "SELECT customer.name, customer.surname,customer.phone,customer.address, customer.doy FROM contract
         INNER JOIN insurance ON insurance.insurance_code = contract.insurance_code
         INNER JOIN customer ON customer.AFM = contract.AFM
         where  insurance_name = '" . $_POST['products'] . "'";

        // echo $sql;

        $res = mysqli_query($mysqli, $sql);
        if ($res == TRUE) {

            echo "<center><table border = '1'  width='700'>";
            echo "<tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Phone</th>
            <th>Address</th>
            <th>DOY</th>
            </tr>";

            while ($newArray = mysqli_fetch_array($res, MYSQLI_BOTH)) {
                $name = $newArray['name'];
                $sur = $newArray['surname'];
                $pho = $newArray['phone'];
                $add = $newArray['address'];
                $dou = $newArray['doy'];
                echo "<tr><td><center>" . $name . "</center></td><td><center>" . $sur . "</center></td><td><center>" . $pho . "</center></td><td><center>" . $add . "</center></td><td><center>" . $dou . "</center></td></tr>";
            }

            echo "</table></center>";
        } else {
            echo "Error: Cannot retrieve client's data";
        }

        mysqli_close($mysqli);
    }

    ?>
    <p>


    </p>
    <a href="http://localhost/General%20Insurance/menuproducts.html">
        <center>Choose another product</center>
    </a>
    <p><a href="http://localhost/General%20Insurance/">
            <center>Go to main page</center>
        </a></p>

</body>

</html>