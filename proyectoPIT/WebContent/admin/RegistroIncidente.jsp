<%@ taglib uri="/struts-tags" prefix="s" %>  

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

	<div class="content-wrapper">
	
	<section class="content-header">
	<h1>
	Registrar Nuevo Incidente
    </h1>
	<ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
    <li><a href="#">Incidente</a></li>
    <li class="active">Registrar de incidente</li>
	</ol>
    </section>
<s:form action="registrando"  theme="simple">

	<s:hidden name="idOperador"></s:hidden>

    <section class="content">
    
    <div class="col-md-12">
    <div class="box box-default">
    <div class="box-header with-border">
    	<h3 class="box-title">Datos generales</h3>
    	<div class="box-tools pull-right">
    	<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
    	<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
    	</div>
    </div>
    
	<div class="box-body">
	
    	<div class="col-md-4">        	
		<div class="form-group">
		<s:label>Id del Incidente</s:label>
		<input name="idIncidencia" value="<s:property value="codNuevaInciden"/>" readonly="readonly"  Class="form-control" placeholder="Id incidente"/>
		</div>
		</div>
		
		<div class="col-md-4">
    	<div class="form-group">
		<s:label>Empresa</s:label>
		<s:select cssClass="form-control select2" name="empresa" headerValue="Seleccione Empresa" listKey="idEmpresa" listValue="razSocEmpresa" list="%{empresas}" />
		</div>
		</div>
		
		<div class="col-md-4">
		<div class="form-group">
		<s:label>Cliente</s:label>
		<s:select cssClass="form-control select2" name="idCliente" headerValue="Seleccione Cliente" listKey="idCliente" listValue="nombreCliente" list="%{clientes}" />
		</div>
		</div>
		
	</div>
	
	</div>
	</div>

	<div class="col-md-8">
	<div class="box box-danger">
    <div class="box-header">
    <h3 class="box-title">Datos del incidente</h3>
    </div>
    	<div class="box-body">
    	<div class="col-md-8">
    	<div class="box-body pad">
    	<s:textarea cssClass="textarea" cssStyle="width: 100%; height: 120px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"
    	placeholder="Descipcion del incidente" name="descripIncidencia"></s:textarea>
    	</div>           
    	<div class="box-body pad">
    	<s:textarea cssClass="textarea" cssStyle="width: 100%; height: 60px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"
    	placeholder="Resumen" name="resumenIncidencia"></s:textarea>
		</div>      
		</div>
		<div class="col-md-4">
		<div class="form-group">
		<s:label>Prioridad del incidente</s:label>
		<s:select cssClass="form-control select2" name="idPrioridad" headerValue="Seleccione Prioridad" listKey="idPrioridad" listValue="descripPrioridad" list="%{prioridades}" />
		</div>
		</div>
   		</div>
   	</div>
   	</div>
   	
   	
   		
   	
   	
   	<div class="col-md-4">
   		<div class="box box-primary">
   		<div class="box-header">
   		<h3 class="box-title">Datos de asignación</h3>
   		</div>
   		<div class="box-body">
		<div class="form-group">
		<s:label>Asignar Grupo</s:label>
		<s:select cssClass="form-control select2" name="idGrupo" headerValue="Seleccione Grupo" listKey="idGrupo" listValue="nombreGrupo" list="%{grupos}" />
		</div>  
		</div>
		<br><br><br>
		<div class="box-header">
   		<h3 class="box-title">¿Grabar Incidente y Asignarlo al Grupo?</h3>
   		</div>
		<div class="box-body">
		<div class="form-group">
		<div class="col-xs-6" align="center">
		<s:submit cssClass="btn btn-danger" value="Grabar"/>
		</div>
		<div class="col-xs-6" align="center">
		<button type="submit" class="btn btn-danger">Cancelar</button>
		</div>
		</div>
		</div>
		</div>
    </div>
   
	</section>
	</s:form>
  	</div>

	
	</div>
	</body>

