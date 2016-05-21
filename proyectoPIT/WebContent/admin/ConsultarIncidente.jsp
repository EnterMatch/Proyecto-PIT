<%@ taglib uri="/struts-tags" prefix="s" %>  

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

	<div class="content-wrapper">
	
	<section class="content-header">
	<h1>
	Consultar Incidente
	</h1>
	<ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
    <li><a href="#">Incidente</a></li>
    <li class="active">Consultar incidente</li>
    </ol>
    </section>



    <section class="content">
	<div class="box box-info">
		<div class="box-header with-border">
        <div class="box-tools pull-right">
        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
        </div>
        </div>
    
		<div class="box-body">
        	<div class="col-md-6">
            <h4>Filtrar</h4>
            <div class="form-group">
            <select class="form-control select2" style="width: 100%;">
            <option selected="selected">Seleccione un filtro</option>
            </select>
            </div>
            </div>
            <div class="col-md-6">
            <br><br>
            <input type="submit" value="Verificar" class="btn btn-danger" name="submit"/>
            </div>
        </div>        
            
        <div class="box-body">
            <div class="table-responsive">
            <form action="consultar">
              <table class="table no-margin">
                <thead>
                  <tr>
                    <th>Id Incidente</th>
                    <th>Empresa</th>
                    <th>Cliente</th>
                    <th>Estado de Incidente</th>
                    <th>Prioridad</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>#Id Incidente</td>
                    <td>#Empresa</td>
                    <td>#Cliente</td>
                    <td>#Estado de Incidente</td>
                    <td>#Prioridad</td>
                    <td>
                    <div class="checkbox">
                    <label>
                    <input type="checkbox">
                    </label>                    
                  	 </div>
                    </td>
                  </tr>
                  <tr>
                    <td>#Id Incidente</td>
                    <td>#Empresa</td>
                    <td>#Cliente</td>
                    <td>#Estado de Incidente</td>
                    <td>#Prioridad</td>
                    <td>
                    <div class="checkbox">
                    <label>
                    <input type="checkbox">
                    </label>                    
                     </div>
                    </td>
                  </tr>
                  <tr>
                    <td>#Id Incidente</td>
                    <td>#Empresa</td>
                    <td>#Cliente</td>
                    <td>#Estado de Incidente</td>
                    <td>#Prioridad</td>
                    <td>
                    <div class="checkbox">
                    <label>
                    <input type="checkbox">
                    </label>                    
                     </div>
                    </td>
                  </tr>
                  <tr>
                    <td>#Id Incidente</td>
                    <td>#Empresa</td>
                    <td>#Cliente</td>
                    <td>#Estado de Incidente</td>
                    <td>#Prioridad</td>
                    <td>
                    <div class="checkbox">
                    <label>
                    <input type="checkbox">
                    </label>                    
                     </div>
                    </td>
                  </tr>
                </tbody>
              </table>
              
              
              <div class="form-group">
              	<div class="col-md-12" align="center">   
                <input type="submit" value="Resolver incidente" class="btn btn-danger" name="submit"/>
              	</div>
         	  </div>
         	
         	</form>
         	  
            </div>
          </div>
            
          </div>

    </section>
    </div>
    
    
  </div>

</body>

