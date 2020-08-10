<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cv";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$edu = "SELECT * FROM education";

#education table data

$result = mysqli_query($conn, $edu);
if (mysqli_num_rows($result) > 0) {
    // output data of each row

    foreach ($result as $row) {
        $BSC[] = $row["BSC"];
        $HSC[] = $row["HSC"];
        $SSC[] = $row["SSC"];
    }
}

$education = '
    <tbody>
          <tr>
            <th scope="row">' . $BSC[0] . '</th>
            <td>' . $HSC[0] . '</td>
            <td>' . $SSC[0] . '</td>

          </tr>
          <tr>
            <th scope="row">' . $BSC[1] . '</th>
            <td>' . $HSC[1] . '</td>
            <td>' . $SSC[1] . '</td>
          </tr>
          <tr>
            <th scope="row">' . $BSC[2] . '</th>
            <td>' . $HSC[2] . '</td>
            <td>' . $SSC[2] . '</td>
          </tr>
        
        </tbody>
    ';

#Work Experience table data
$we = "SELECT * FROM `work-experience`";

$result = mysqli_query($conn, $we);

if (mysqli_num_rows($result) > 0) {
    // output data of each row

    foreach ($result as $row) {
        $duration[] = $row["Duration"];
        $organization[] = $row["Organization"];
        $job[] = $row["Job Title"];
    }
}

$work='
<tbody>
              <tr>
                <th scope="row">'.$duration[0].'</th>
                <td>'.$organization[0].'</td>
                <td>'.$job[0].'</td>

              </tr>
            
            </tbody>


';

#Work Experience table data
$skill = "SELECT * FROM skill";

$result = mysqli_query($conn, $skill);

if (mysqli_num_rows($result) > 0) {
    // output data of each row

    foreach ($result as $row) {
        $language[] = $row["language"];
        $level[] = $row["skill level"];
    }
}

$conn->close();
