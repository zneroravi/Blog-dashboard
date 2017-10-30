<?php session_start(); ?>
<?php include "db.php"; ?>
<?php include "../admin/functions.php"; ?>

<?php 

if(isset($_POST['login'])) {


	login_user($_POST['username'],$_POST['password']);
 
}
?>

