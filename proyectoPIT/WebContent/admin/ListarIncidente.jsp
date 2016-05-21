<%@ taglib uri="/struts-tags" prefix="s" %>  

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
<div class="content-wrapper">
    
    <section class="content-header">
    <h1>Listar Incidentes</h1>
    <ol class="breadcrumb">
	<li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
	<li><a href="#">Incidente</a></li>
	<li class="active">Listar incidente</li>
	</ol>
    </section>
    
    <section class="content">
    <div class="box box-info">
		
		<div class="box-header with-border">
        <h3 class="box-title">Lista de Incidentes</h3>
        <div class="box-tools pull-right">
        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
        </button>
        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
        </div>
		</div>
            
		<div class="box-body">
		<div class="table-responsive">
		<table class="table no-margin">
			<thead>
              <tr>
           	  <th>Id Incidente</th>
              <th>Empresa</th>
              <th>Cliente</th>
              <th>Estado</th>
              <th>Prioridad</th>
              </tr>
			</thead>
            <tbody> 
			  <tr>
              <td>#IdIncidente</td>
              <td>#Empresa</td>
              <td>#Cliente</td>
              <td>#Estado</td>
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
              <td>#IdIncidente</td>
              <td>#Empresa</td>
              <td>#Cliente</td>
              <td>#Estado</td>
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
              <td>#IdIncidente</td>
              <td>#Empresa</td>
              <td>#Cliente</td>
              <td>#Estado</td>
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
              <td>#IdIncidente</td>
              <td>#Empresa</td>
              <td>#Cliente</td>
              <td>#Estado</td>
              <td>#Prioridad</td>
              <td>
              <div class="checkbox">
              <label><input type="checkbox"></label>                    
              </div>
              </td>
              </tr>
              </tbody>
		</table>
		<div class="form-group" align="center">
			<form action="listar">
			<input type="submit"  value="Asignar" class="btn btn-danger" name="submit">
			</form>
		</div>
        </div>
		</div>

	</div>
	</section>
	
</div>
</div>
</body>

