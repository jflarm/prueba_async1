<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> -->
<!-- <html xmlns="http://www.w3.org/1999/xhtml"> -->
<!DOCTYPE html>
<html lang="es">
<head>
<title>Ferreteria Amiga</title>
<meta http-equiv="Content-Type" content="text/html;charset=iso-8859-1" />
<link rel="stylesheet" href="<?php echo APP_ROOT; ?>/public/style.css" type="text/css" media="screen" />
</head>
<body>

  <div id="container">

    <?php include APP_ROOT.'/public/components/page_header.php' ?>
    <?php include APP_ROOT.'/public/components/page_menu.php' ?>
    <?php include APP_ROOT.'/public/components/left_side_bar.php' ?>

    <!-- Start of Main Content Area -->
    <div id="main_content">

      <?php 
        if(isset($_GET['view'])){
          if($_GET['view'] == 'productos'){
            require_once APP_ROOT.'/public/views/productos.php';
          }
          elseif ($_GET['view'] == 'nosotros') {
             require_once APP_ROOT.'/public/views/nosotros.php'; 
          }elseif($_GET['view'] == 'promocion') {
             require_once APP_ROOT.'/public/views/promocion.php'; 
          }elseif ($_GET['view'] == 'servicios') {
             require_once APP_ROOT.'/public/views/servicios.php'; 
          }elseif ($_GET['view'] == 'contacto') {
             require_once APP_ROOT.'/public/views/contacto.php'; 
          }

        }else{
          // Este es el inicio
          require_once APP_ROOT.'/public/components/new_item.php';
          echo '<div class="h_divider">&nbsp;</div>';

          require_once APP_ROOT.'/public/components/sub_items.php';
          echo '<div class="h_divider">&nbsp;</div>';
          // End of Main Content Area
      
        }
      ?>


    </div>
    <?php include APP_ROOT.'/public/components/footer.php' ?>



  </div>

  <script src="<?php echo APP_ROOT; ?>/public/js/jquery.js"> </script>
  <script src="<?php echo APP_ROOT; ?>/public/js/main.js"> </script>
  <script src="<?php echo APP_ROOT; ?>/public/js/productos.js"> </script>

</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Document</title>
</head>
<body>
  
</body>
</html>