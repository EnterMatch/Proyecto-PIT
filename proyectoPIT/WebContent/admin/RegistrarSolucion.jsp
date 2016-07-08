<%@ taglib uri="/struts-tags" prefix="s"%>

<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<div class="content-wrapper">
			<section class="content-header">
				<h1>Registrar Solución</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i>Inicio</a></li>
					<li><a href="#">Solción</a></li>
					<li class="active">Registrar Solución</li>
				</ol>
			</section>
			<section class="content">
				<div class="box box-default">
					<div class="box-header with-border">
						<h3 class="box-title">Datos generales</h3>

						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool"
								data-widget="collapse">
								<i class="fa fa-minus"></i>
							</button>
							<button type="button" class="btn btn-box-tool"
								data-widget="remove">
								<i class="fa fa-remove"></i>
							</button>
						</div>
					</div>
					
					
					<form action="solucionando">
					
					
					<div class="box-body">
					
					
						<div class="col-md-6">
							<div class="form-group">
							<div class="box-body pad">
								<label>Id del Incidente</label>
								<s:hidden name="idIncidencia" value="%{idIncidencia}" />
								<input name="idIncidencia" value="<s:property value="idIncidencia"/>" readonly="readonly" Class="form-control"/>
							</div>
							<div class="box-body pad">
								<label>Solución del Incidente</label> 
    	<s:textarea cssClass="textarea" readonly="readonly" cssStyle="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"
    	 name="solucionIncidencia"></s:textarea>
							</div>
							</div>
						</div>
						
						
						<div class="col-md-6">
						<div class="form-group">
						<div class="box-body pad">
						
						<div class="col-md-12">
						<label>Definir Nueva Solución</label> 
							<div class="box-body pad">
								<textarea name="solucionIncidencia" class="textarea" placeholder="Descipcion de solución"
									style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
							</div>
						</div>
						</div>
						</div>
						</div>
						
						
						<div class="form-group">
						<div class="col-xs-6">
						
						
						
							<div class="col-xs-6" align="center">
								<button type="submit" class="btn btn-danger">Grabar</button>
							</div>
							<div class="col-xs-6" align="center">
								<button type="reset" class="btn btn-danger">Cancelar</button>
							</div>
						
						
							
						</div>
						</div>
						
						
					</div>
					
					
					</form>
					
				</div>
				<br>
				<br>
			</section>
		</div>
	</div>
</body>
