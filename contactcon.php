<?php
// including connection.
include("connection.php");


// Getting data from the form.

$id = $_POST['id'];
$student = $_POST['student'];
$email = $_POST ['email'];
$message = $_POST ['message'];

// Inserting in the Table.

$sql = "insert into contactus(id, student, email, message)values('$id', '$student', '$email', '$message')";
$result = mysql_query($sql);

// If Statement.

if ($result){
	header("Location: contact.php");
}else{
	echo "oohoh sorry connection problem contact your Admin for more information";
}
?>