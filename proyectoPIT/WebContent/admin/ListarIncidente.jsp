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
            <th>Descripción Incidente</th>
            <th>Fecha registrada de Incidente</th>
            <th>Resumen Incidente</th>
            <th>Estado</th>
            <th>Prioridad</th>
			</tr>
			</thead>
			<tbody>
			<s:iterator value="lstIncidente" >
			<tr >
			<td><s:property value="idIncidencia"/></td>
			<td><s:property value="descripIncidencia"/></td>
			<td><s:property value="fecIngIncidencia"/></td>
			<td><s:property value="resumenIncidencia"/></td>
			<td><s:property value="descripEstado"/></td>
			<td><s:property value="descripPrioridad"/></td>
			<td>
            </td>
			</tr>
			</s:iterator>
			</tbody>
		</table>
        </div>
		</div>

	</div>
	</section>
	
</div>
</div>
</body>

