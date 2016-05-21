
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

      <div class="content-wrapper">
      <section class="content-header">
      <h1>
        Generar Reporte de Incidente
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
        <li><a href="#">Incidente</a></li>
        <li class="active">Consultar incidente</li>
      </ol>
    </section>

 
    <!-- Main content -->
    <section class="content">

       <div class="box box-info">
            <div class="box-header with-border">

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>

        <form action="listarCliente.php" method="post">    
          <div class="box-body">
          <div class="row">
          <div class="col-md-4"> 
              <div class="form-group">
                <label>Seleccione fechas de incidentes:</label>
                <div class="input-group">
                <div class="input-group-addon"> 
                <i class="fa fa-calendar"></i>
                </div>
                <input type="text" name="fechaR" class="form-control pull-right" id="reservation">
                </div>
              </div>
          </div>
          <div class="col-md-4">
            <br>
            <input type="submit" value="Buscar" class="btn btn-danger" name="submit"/>
          </div>
          </div>
          </div>
        </form>
            
        <div class="box-body">
        <h4>Lista de incidentes</h4>
            <div class="table-responsive">
              <table class="table no-margin">
                  <thead>
                  <tr>
                    <th>Id de incidente</th>
                    <th>Resumen</th>
                    <th>Prioridad</th>
                    <th>Estado</th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td>I000001</td>
                    <td>Problema en la base de datos</td>
                    <td>Urgente</td>
                    <td>Pendiente</td>
                  </tr>
                 </tbody>
              </table>
            </div>
        </div>

        <div class="box-body">
        <h4>Estado de incidentes</h4>
          <div class="table-responsive">
            <table class="table no-margin">
              <thead>
                <tr>
                  <th>Incidentes resueltos</th>
                  <th>Incidentes en curso</th>
                  <th>Iincidentes pendientes</th>
                  <th>Incidentes asignados</th>
                  <th>Incidentes reasignados</th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                  <td>1</td>
                  <td>0</td>
                  <td>1</td>
                  <td>0</td>
                  <td>0</td>
                  </tr>
                 </tbody>
            </table>
          </div>
        </div>

        <div class="box-body">
            <h4>Clientes</h4>
              <div class="table-responsive">
                <table class="table no-margin">
                  <thead>
                  <tr>
                    <th>Id cliente</th>
                    <th>Empresa</th>
                    <th>Nombre y apellido</th>
                    <th>Insidentes resueltos</th>
                    <th>Iincidentes pendientes</th>
                    <th>Total de incidentes</th>
                  </tr>
                  </thead>
                  <tbody>
                   <tr>
                  
                    <td>Cl0212</td>
                    <td>Instituto Cibertec</td>
                    <td>Maria Paz Sarmiento</td>
                    <td>0</td>
                    <td>1</td>
                    <td>1</td>
                    
                  </tr>
                  
                 </tbody>
				 
                </table>
              </div>
              <!-- /.table-responsive -->
            </div>
            
            <div class="box-body">
            <h4>Empresa</h4>
              <div class="table-responsive">
                <table class="table no-margin">
                  <thead>
                  <tr>
                    <th>Id cliente</th>
                    <th>Nombre de empresa</th>
                    <th>Insidentes resueltos</th>
                    <th>Iincidentes pendientes</th>
                    <th>Total de incidentes</th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                  
                    <td>EM01221</td>
                    <td>Innstituto Cibertec</td>
                    <td>1</td>
                    <td>1</td>
                    <td>2</td>
                    
                  </tr>
                 <tr>
                  	<td>
                    
                    <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10" align="center">
                     
                     <input type="submit" value="Generar PDF" class="btn btn-danger" name="submit"/>
                      
                    </div>
         </div>
                    
                    </td>
                  </tr>
                 
                 </tbody>
				 
                </table>
              </div>

            </div>

          </div>    
            
            </section>
          </div>  
          </div>  
          

</body>

