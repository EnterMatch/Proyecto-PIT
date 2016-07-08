<%@ taglib uri="/struts-tags" prefix="s"%>

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
							<table class="table no-margin" class="hoverTable">
								<thead>
									<tr>
										<th>Id</th>
										<th>Prioridad</th>
										<th>Fecha de registro</th>
										<th>Resumen</th>
										<th>Descripción</th>
										<th>Estado</th>
										<th>Resolver</th>
									</tr>
								</thead>
								<tbody>
									<s:iterator value="lstIncidente">
										<tr>
											<td><s:property value="idIncidencia" /></td>
											<td><s:property value="descripPrioridad" /></td>
											<td><s:property value="fecIngIncidencia" /></td>
											<td><s:property value="resumenIncidencia" /></td>
											<td><s:property value="descripIncidencia" /></td>
											<td><s:property value="descripEstado" /></td>
											<td>
												<button class="btn btn-info mensajeConstruccion"
													data-toggle="modal"
													data-target="#<s:property value="idIncidencia"/>">
													Resolver</button>

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
																			<s:hidden name="idIncidencia">
																				<s:property value="idIncidencia" />
																			</s:hidden>
																			<s:hidden name="idEmpleado">
																				<s:property value="idEmpleado" />
																			</s:hidden>
<!-- 																			<input name="idIncidencia" -->
<%-- 																				value="<s:text name=""><s:property value="idIncidencia"/></s:text>" --%>
<!-- 																				disabled="disabled" readonly class="form-control"> -->
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

																		<h4 class="box-title">Datos del mantenimiento</h4>
																		<div class="col-md-12">
																			<label>Nuevo Resumen</label>
																			<textarea class="form-control"
																				name="resumenIncidencia"
																				placeholder="Nueva descripción"
																				style="width: 100%; height: 50px; font-size: 14px;"> 
																			</textarea>
																		</div>
																		<div class="col-md-12">
																			<label>Nueva Descripción</label>
																			<textarea class="form-control"
																				name="descripIncidencia"
																				placeholder="Nueva descripción"
																				style="width: 100%; height: 50px; font-size: 14px;"> 
																			</textarea>
																		</div>
																		<div class="col-md-12">
																			<label>Solución</label>
																			<textarea class="form-control"
																				name="solucionIncidencia" placeholder="Solución"
																				style="width: 100%; height: 150px; font-size: 14px;">
              																</textarea>
																			<div class="col-sm-6">
																				<center>
																					<button  type="submit" class="btn btn-danger">Grabar</button>
																				</center>
																			</div>
																			<div class="col-sm-6">
																				<center>
																					<button type="reset" class="btn btn-danger">Cancelar</button>
																				</center>
																			</div>
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

