<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<%@ taglib uri="/struts-tags" prefix="s"%>
		<div class="content-wrapper">

			<section class="content-header">
				<h1>Registrar Usuario</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
					<li><a href="#">Usuario</a></li>
					<li class="active">Registrar Usuario</li>
				</ol>
			</section>

			<section class="content">
				<!-- INICIO DEL FORMULARIO REGISTRAR USUARIO -->
				<s:form id="formRegistrarUsuario" cssClass="form"
					action="registrandoUsuario" theme="simple">
					
					<s:hidden name="idPesona" value="%{codNuevoUsuario}" />
					<s:hidden name="idPesona">
						<s:property value="codNuevoUsuario" />
					</s:hidden>
					
					<s:actionmessage />
					<s:actionerror cssStyle="color:red" />
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

						<div class="box-body">
							<div class="col-md-12">
								<div class="col-md-4">
									<div class="form-group">
										<label for="slcTipoUsuario">Tipo de Usuario</label>
										<s:select id="slcTipoUsuario" name="tipoUsuario"
											cssClass="form-control" list="lstTipoUsuarios"
											listKey="idTipoUsuario" listValue="descripTipoUsuario" />
									</div>
								</div>
							</div>
							<!-- col-md-12(Primero) -->

							<div class="col-md-12">
								<div id="PrimerBloque" class="col-md-4">
									<div class="form-group">
										<label for="txtApellidoPaterno">Apellido Paterno</label>
										<s:textfield id="txtApellidoPaterno" name="apePatPersona"
											cssClass="form-control" placeholder="Apellido Paterno" />
									</div>

									<div class="form-group">
										<label for="txtNombre">Nombre</label>
										<s:textfield id="txtNombre" name="nombrePersona"
											cssClass="form-control" placeholder="Nombre" />
									</div>
								</div>
								<div id="SegundoBloque" class="col-md-4">
									<div class="form-group">
										<label for="txtApellidoMaterno">Apellido Materno</label>
										<s:textfield id="txtApellidoMaterno" name="apeMatPersona"
											cssClass="form-control" placeholder="Apellido Materno" />
									</div>

									<div class="form-group">
										<label for="txtEmail">E-mail</label>
										<s:textfield id="txtEmail" name="emailPersona"
											cssClass="form-control" placeholder="E-mail" />
									</div>

								</div>

								<div id="GrupoYRol" class="col-md-4">
									<div class="form-group">
										<label>Grupo de trabajo</label>
										<s:select id="slcGrupo" name="idGrupo" cssClass="form-control"
											list="grupos" listKey="idGrupo" listValue="nombreGrupo" />
									</div>

									<div class="form-group">
										<label>Rol</label>
										<s:select id="slcRol" name="idRol" cssClass="form-control"
											list="lstRoles" listKey="idRol" listValue="descripRol" />
									</div>
								</div>
							</div>
							<!-- /col-md-12(Segundo) -->
						</div>
						<!-- /box-body -->

					</div>
					<!-- /box box-default -->

					<div class="box box-default">
						<div class="box-header with-border">
							<h3 class="box-title">Datos de Usuario</h3>

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


						<div class="box-body">
							<div class="col-md-12">
								<div class="col-md-4">
									<div class="form-group">
										<label for="txtUsuario">Usuario</label>
										<s:textfield id="txtUsuario" name="nombreUsuario"
											cssClass="form-control" placeholder="Usuario" />
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="txtClave">Contraseña</label>
										<s:password id="txtClave" name="claveUsuario"
											cssClass="form-control" placeholder="Contraseña" />
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="txtClaveRepetir">Repetir Contraseña</label> <input
											type="password" name="repetirClaveUsuario"
											class="form-control" id="txtClaveRepetir"
											placeholder="Repetir Contraseña">
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div id="btnGrabar" class="col-md-3 col-md-offset-3"
									align="center">
									<button type="submit" class="btn btn-primary">Grabar</button>
								</div>
								<div id="btnCancelar" class="col-md-3" align="center">
									<button type="reset" class="btn btn-danger">Limpiar</button>
								</div>
							</div>
						</div>

					</div>
					<!-- /box box-default -->
				</s:form>
				<!-- FIN DEL FORMULARIO REGISTRAR USUARIO -->
			</section>
			<!-- /content -->

		</div>

	</div>


</body>

