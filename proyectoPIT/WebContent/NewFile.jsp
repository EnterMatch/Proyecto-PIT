<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="modal fade" id="<s:property value="idIncidencia"/>"
		tabindex="-1" role="article" aria-labelledby="myModalLabel"
		aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<h3 align="center">
					Asignar Incidente de Id:
					<s:property value="idIncidencia" />
				</h3>
				<div class="box-body">
					<div class="box-body">
						<div class="col-md-12">
							<div class="box box-primary">
								<div class="box-header">
									<h3 class="box-title">Asignar Empleado</h3>
								</div>
								<div class="box-body">
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
														<s:form action="asignar" value="%{idIncidencia}" id=""
															method="post">
															<td><s:textfield value="%{idIncidencia}"
																	name="idIncidencia" /></td>
															<td><s:textfield value="%{idEmpleado}"
																	name="idEmpleado" /></td>
															<td><s:submit cssClass="btn btn-danger"
																	value="Asignar" /></td>
														</s:form>
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
		</div>
	</div>
</body>
</html>