<%@page import="model.Incidencia"%>
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
            <div class="table-responsive">
            <form action="consultar">
            <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>Id Incidente</th>
                        <th>Resumen</th>
                        <th>Cliente</th>
                        <th>Estado de Incidente</th>
                        <th>Prioridad</th>
                        <th><li class="fa fa-check-square-o"></li></th>
                      </tr>
                    </thead>
                    <tbody>
                    
                 <s:iterator value="lstIncidente">
                
                  <tr>
                    <td><s:property value="idIncidencia"/></td>
                    <td><s:property value="resumenIncidencia"/></td>
                    <td><s:property value="nombreCliente"/></td>
                    <td><s:property value="descripEstado"/></td>
                    <td><s:property value="descripPrioridad"/></td>
                    <td>
                    <div class="checkbox">
                    <label>
                    <input type="checkbox" name="rd">
                    </label>                    
                  	 </div>
                    </td>
                  </tr>
                  
                  </s:iterator>
                      
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

