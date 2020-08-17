<?php  require_once '../../app/core/config.php'; ?>

    <!-- Start of Page Header -->
    <div id="page_header">
      
      <div id="page_heading"> </div>

      <div class="company_name">
        <h1><span>Ferreteria Amiga</span></h1>
        <h2><span>Tus herramientas al alcance</span></h2>        
      </div>


      <div id="page_headerlinks">
        <ul>
          <li><a href="#">Lista de Deseos</a></li>
          <li><a href="#">Lista de Pedidos</a></li>
          <li><a href="#">Estado</a></li>
          <li class="last"><a href="#">Carrito</a></li>
        </ul>
      </div>

      <div id="page_headersearch">
        <h3>Buscar:</h3>
        <form action="#">
          <div>
            <input type="text" id="campo_buscar" />
            <input type="image" src="<?php echo APP_ROOT ?>/public/images/button_go.gif" class="button" />
            <div class="clearthis">&nbsp;</div>
          </div>
        </form>
      </div>

      <div class="clearthis">&nbsp;</div>

    </div>
    <!-- End of Page Header -->
