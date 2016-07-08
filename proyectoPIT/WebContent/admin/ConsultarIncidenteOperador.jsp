<%@page import="model.Incidencia"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<div class="content-wrapper">

			<section class="content-header">
				<h1>Consultar Incidente</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
					<li><a href="#">Incidente</a></li>
					<li class="active">Consultar Incidente</li>
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
										<th>Empresa</th>
										<th>Cliente</th>
										<th>Resumen</th>
										<th>Estado de Incidente</th>
										<th>Prioridad</th>
										<th>Verificar</li></th>
									</tr>
								</thead>
								<tbody>

									<s:iterator value="lstIncidentesSinAsignar">
										<tr>
											<td><s:property value="idIncidencia" /></td>
											<td><s:property value="fecIngIncidencia" /></td>
											<td><s:property value="raz_soc_empresa" /></td>
											<td><s:property value="nombreCliente" /></td>
											<td><s:property value="resumenIncidencia" /></td>
											<td><s:property value="descripEstado" /></td>
											<td><s:property value="descripPrioridad" /></td>
											<td>
												<button class="btn btn-info mensajeConstruccion"
													data-toggle="modal"
													data-target="#<s:property value="idIncidencia"/>">
													Ver</button>

												<div class="modal fade"
													id="<s:property value="idIncidencia"/>" tabindex="-1"
													role="article" aria-labelledby="myModalLabel"
													aria-hidden="true">
													<div class="modal-dialog modal-lg">
														<div class="modal-content">
															<h3 align="center">Resolver Incidente</h3>
															<div class="box-body">

																<form action="manteniendo" method="post">
																	<div class="col-md-12">
																		<h4 class="box-title">Datos del incidente</h4>
																		<div class="col-md-2">
																			<label>Id</label>
																			<input name="idIncidencia"
																				value="<s:text name=""><s:property value="idIncidencia"/></s:text>"
																				disabled="disabled" readonly class="form-control">
																		</div>
																		<div class="col-md-3">
																			<label>Empresa</label> <input
																				value="<s:property value="raz_soc_empresa"/>"
																				disabled="disabled" readonly class="form-control">
																		</div>
																		<div class="col-md-3">
																			<label>Cliente</label> <input
																				value="<s:property value="nombreCliente"/>"
																				disabled="disabled" readonly class="form-control">
																		</div>
																		<div class="col-md-4">
																			<label>Resumen</label> <input
																				value="<s:property value="resumenIncidencia"/>"
																				disabled="disabled" readonly class="form-control">
																		</div>
																		<div class="col-md-12">
																			<label>Descripción</label>
																			<textarea disabled="disabled" class="form-control">
																			<s:property value="descripIncidencia" />
																			</textarea>
																		</div>
																	</div>
																</form>

															</div>
														</div>
													</div>
												</div>
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

