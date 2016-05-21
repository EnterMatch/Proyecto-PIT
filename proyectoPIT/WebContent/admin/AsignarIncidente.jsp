<%@ taglib uri="/struts-tags" prefix="s" %>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
<div class="content-wrapper">
	
	<section class="content-header">
	<h1>Asignar Incidente</h1>
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
		
		
		
		<form action="">    
        <div class="box-body">
          			
          			<div class="col-md-4">
            		<div class="box box-danger">
              		<div class="box-header">
                	<h3 class="box-title">Datos del Incidente</h3> 
                	<div class="form-group">
                	<label for="exampleInputEmail1">Id del Incidente</label>
                	<input type="email" class="form-control" disabled value="I000001" id="exampleInputEmail1" 
                	placeholder="Id del incidente">
                	</div>
                	<div class="form-group">
                	<label for="exampleInputEmail1">Resumen del incidente</label>
                	<input disabled type="email" value="Error en base de datos" class="form-control" id="exampleInputEmail1" 
                	placeholder="Resumen del incidente">
                	</div>
                	<div class="form-group" style="border-bottom:solid 1px #000000">
                	<label>Prioridad de incidente</label>
                	<select disabled class="form-control select2" style="width: 100%;">
                	<option selected="selected">Urgente</option> 
                	</select>
                	</div>
                	<div class="form-group">
                	<div class="col-md-6">
                	<h4>Seleccione tipo operador</h4>
                	<div class="checkbox">
                  	<label>
                  	<input type="checkbox">
                  	Tecnico de campo
                  	</label>
                	</div>  
                	<div class="checkbox">
                  	<label>
                  	<input type="checkbox">
                  	Especialista
                  	</label>                    
                	</div>
                	</div>
                	<br><br>
                	<div class="col-md-6" align="center">                
                  	<input type="submit" value="Verificar" class="btn btn-danger" name="submit"/>
                	</div>
                	</div>  
              		</div>
            		</div>
          			</div>



          			<div class="col-md-8">
          			 <div class="box box-primary">
            		  <div class="box-header">
            		   <h3 class="box-title">Asignar Operador</h3>
            			</div>
          				<div class="box-body">
          				<div class="form-group">
          				<div class="table-responsive">
             				<table class="table no-margin">
              				 <thead>
                			  <tr>
                			   <th>#Id de Operador</th>
                			   <th>Nombres y apellidos</th>
                			   <th>Nº de Incidentes pendientes</th>
                			   <th>Grado de efectividad</th>
                			  </tr>
              				</thead>
              				<tbody>
                			 <tr>
                  			  <td>#Id de Operador</td>
                  			  <td>#Nombres y apellidos</td>
                 			  <td>#Nº de Incidentes pendientes</td>
                  			  <td>#Grado de efectividad</td>
                  			  <td>
                  			   <div class="checkbox" >
                  			   <input type="checkbox">                    
                  			   </div>
                  			  </td>
                			 </tr>
                			 <tr>
                  			  <td>#Id de Operador</td>
                  			  <td>#Nombres y apellidos</td>
                  			  <td>#Nº de Incidentes pendientes</td>
                  			  <td>#Grado de efectividad</td>
                  			  <td>
                  			   <div class="checkbox">
                  			    <input type="checkbox">                    
                  			   </div>
                  			  </td>
                			 </tr>
              				</tbody>
              				</table>
          				</div>    
          				</div>
					    <div class="form-group">
					     <div class="col-xs-6" align="center">
            			  <button type="submit" class="btn btn-danger">Grabar</button>
            		     </div>
            		    <div class="col-xs-6" align="center">
            			 <button type="submit" class="btn btn-danger">Cancelar</button>
            		    </div>
					   </div>
					  </div>
        			 </div>
					</div>
					
					
					
        </div>
        </form>
        
        
        
	</div>
	</section>
	
</div>
</div>
</body>