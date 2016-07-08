<%@page import="model.Incidencia"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<div class="content-wrapper">

			<section class="content-header">
				<h1>Incidentes Asignados</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
					<li><a href="#">Incidente</a></li>
					<li class="active">Incidentes Asignados</li>
				</ol>
			</section>
			<section class="content">
				<div class="box box-info">
					<div class="box-header with-border">
						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool"
								data-widget="collapse">
								<i class="fa fa-minus"></i>
							</button>
							<button type="button" class="btn btn-box-tool"
								data-widget="remove">
								<i class="fa fa-times"></i>
							</button>
						</div>
					</div>

					<div class="box-body">
						<div class="table-responsive">
							<table id="example1" class="table table-bordered table-striped">
								<thead>
									<tr>
										<th>Id Incidente</th>
										<th>Fecha de Registro</th>
										<th>Resumen</th>
										<th>Cliente</th>
										<th>Estado de Incidente</th>
										<th>Prioridad</th>
										<th>Verificar</th>
									</tr>
								</thead>
								<tbody>

									<s:iterator value="lstIncidentesAsignados">
										<tr>
											<td><s:property value="idIncidencia" /></td>
											<td><s:property value="fecIngIncidencia" /></td>
											<td><s:property value="resumenIncidencia" /></td>
											<td><s:property value="nombreCliente" /></td>
											<td><s:property value="descripEstado" /></td>
											<td><s:property value="descripPrioridad" /></td>
											<td>
												<form action="registrarSolucion" method="post">
													<s:hidden name="idIncidencia" value="%{idIncidencia}"/>
													<button type="submit" class="btn btn-danger">Verificar</button>
												</form>
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

