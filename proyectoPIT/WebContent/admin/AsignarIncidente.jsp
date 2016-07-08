<%@ taglib uri="/struts-tags" prefix="s"%>

<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<div class="content-wrapper">

			<section class="content-header">
				<h1>Asignar Incidente</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
					<li><a href="#">Incidente</a></li>
					<li class="active">Asignar Incidente</li>
				</ol>
			</section>

			<section class="content">
				<div class="box box-default">
					<div class="box-header with-border">
						<h3 class="box-title">Datos de Incidente</h3>
						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool"
								data-widget="collapse">
								<i class="fa fa-minus"></i>
							</button>
						</div>
					</div>
					<div class="box-body">
						<div class="col-md-12">
							<div class="box box-danger">
								<div class="box-header">
									<div class="col-md-4">
										<div class="form-group">
											<label for="exampleInputEmail1">Id del Incidente</label> <input
												type="text" class="form-control" disabled
												value="<s:property value="idIncidencia" />">
										</div>
										<div class="form-group">
											<label>Prioridad de incidente</label> <select disabled
												class="form-control select2" style="width: 100%;">
												<option selected="selected">Urgente</option>
											</select>
										</div>
									</div>
									<div class="col-md-8">
										<div class="form-group">
											<label for="exampleInputEmail1">Resumen del incidente</label>
											<input disabled type="email" value="Error en base de datos"
												class="form-control">
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="box box-default">
					<div class="box-header with-border">
						<h3 class="box-title">Asignar a Técnico</h3>
						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool"
								data-widget="collapse">
								<i class="fa fa-minus"></i>
							</button>
						</div>
					</div>
					<div class="box-body">
						<div class="col-md-12">
							<div class="box box-primary">
								<div class="box-body">
									<div class="form-group">
										<div class="table-responsive">
											<table class="table no-margin">
												<thead>
													<tr>
														<th>Id Empleado</th>
														<th>Nombres y apellidos</th>
														<th>Nº de Incidentes pendientes</th>
														<th>Alta</th>
														<th>Media</th>
														<th>Baja</th>
														<th>Asignar</th>
													</tr>
												</thead>
												<tbody>
													<s:iterator value="lstEmpleado">
														<tr>
															<td><s:property value="idEmpleado" /></td>
															<td><s:property value="apePatPersona" /></td>
															<td><s:property value="numIncidencias" /></td>
															<td><s:property value="Alta" /></td>
															<td><s:property value="Media" /></td>
															<td><s:property value="Baja" /></td>
															<td>
																<form action="asignar" method="post">
																	<s:hidden name="idIncidencia" value="%{idIncidencia}" />
																	<s:hidden name="idEmpleado" value="%{idEmpleado}" />
																	<button type="submit" class="btn btn-danger">Asignar</button>
																</form>
															</td>
														</tr>
													</s:iterator>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
</body>