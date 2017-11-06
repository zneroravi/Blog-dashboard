<?php include "includes/admin_header.php" ?>
    
<?php 


    
    
?>

    <div id="wrapper">
       

        
  

        <!-- Navigation -->
 
        <?php include "includes/admin_navigation.php" ?>
        
        
    

<div id="page-wrapper">

<div class="container-fluid">

    <!-- Page Heading -->
    <div class="row">
        <div class="col-lg-12">


            <h1 class="page-header">
                Welcome to admin
                <small>Author</small>
            </h1>


            <div class="col-xs-6">
            
            <?php insert_categories();  ?>
    
    <form action="" method="post">
      <div class="form-group">
         <label for="cat-title">Add Category</label>
          <input type="text" class="form-control" name="cat_title">
      </div>
       <div class="form-group">
          <input class="btn btn-primary" type="submit" name="submit" value="Add Category">
      </div>

    </form>
    
    <?php // UPDATE AND INCLUDE QUERY

    if(isset($_GET['edit'])) {
    
        $cat_id = $_GET['edit'];
        
        include "includes/update_categories.php";
       
    
    }
                
                
    ?>

    
    </div><!--Add Category Form-->

            <div class="col-xs-6">
    <table class="table table-bordered table-hover">
      

        <thead>
            <tr>
                <th>Id</th>
                <th>Category Title</th>
            </tr>
        </thead>
        <tbody>

        <?php 


    $query = "SELECT * FROM categories";
    $select_categories = mysqli_query($connection,$query);  

    while($row = mysqli_fetch_assoc($select_categories)) {
    $cat_id = $row['cat_id'];
    $cat_title = $row['cat_title'];

    echo "<tr>";
        
    echo "<td>{$cat_id}</td>";
    echo "<td>{$cat_title}</td>";
   echo "<td><a href='categories.php?delete={$cat_id}'>Delete</a></td>";
   echo "<td><a href='categories.php?edit={$cat_id}'>Edit</a></td>";
    echo "</tr>";

    }




?>
        

      

        </tbody>
    </table>

                        
                        
                        
                </div>        


            </div>
        </div>
        <!-- /.row -->

    </div>
    <!-- /.container-fluid -->

</div>



<?php 

deleteCategories();

 ?>

  
        
     
        
        <!-- /#page-wrapper -->
        
    <?php include "includes/admin_footer.php" ?>
