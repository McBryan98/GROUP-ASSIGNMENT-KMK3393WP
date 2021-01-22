<?php
$conn = mysqli_connect("localhost","root","","foodsys");

if(isset($_POST['submit']))
{
    $username = $_POST["username"];
    $password = $_POST["pass"];

    $sql = mysqli_query($conn, "SELECT count(*) as total FROM users Where 
    username ='".$username."' and password ='".$password."'") or die(mysqli_error($conn));

    $rw = mysqli_fetch_array($sql);

    if($rw['total']>0){
        echo "<script>alert('username and password are correct')</script>";
        $_SESSION['userid'] = $userid;

				header('location: dashboard.php');	
    }
    else{
        echo "<script>alert('username and password are incorrect')</script>";
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<form method="post">
<img src="img/login.jpg" alt="Girl in a jacket" style="width:80px;height:80px;"><br>
    <label>Username</label>
    <input type="text" name="username"><br>
    <label>Password</label>
    <input type="password" name="pass"><br>
    <input type="submit" name="submit">
    <p>2021 | Coded by Sahabat Food Service</p>
</form>
</body>

</html>