<?php 


if(isset($_GET['p_id'])) {

		$the_post_id = escape($_GET['p_id']);

		$query = "DELETE post_views_count FROM posts WHERE post_id = $the_post_id ";
		$send_query = mysqli_query($connection, $query);

		  if(!$send_query) {

		        die("query failed" . mysqli_error($connection));
		    }


		header("Location: view_all_posts.php");



	}




 ?>