<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="content-wrapper">

    <section class="content-header">
      <h1>
        Registrar Usuario
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
        <li><a href="#">Usuario</a></li>
        <li class="active">Registrar Usuario</li>
      </ol>
    </section>

    <section class="content">

       <div class="box box-default">
        <div class="box-header with-border">
          <h3 class="box-title">Datos generales</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
          </div>
        </div>

        <div class="box-body">
			<div class="col-md-12">
				<div class="col-md-4">
					<div class="form-group">
						<label for="slcTipoUsuario">Tipo de Usuario</label>
						<s:select id="slcTipoUsuario" cssClass="form-control" list="lstTipoUsuarios" listKey="idTipoUsuario" listValue="descripTipoUsuario"/>
					</div>
				</div>
			</div> <!-- col-md-12(Primero) -->
			
			<div class="col-md-12">
	            <div id="PrimerBloque" class="col-md-4">
	            	<div class="form-group">
	                  <label for="exampleInputEmail1">Id del usuario</label>
	                  <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Id incidente">
	                </div>
	                
	                <div class="form-group">
	                  <label for="exampleInputEmail1">Nombre y Apellido</label>
	                  <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Nombre y apellido">
	                </div>
	            </div>    
	            <div id="SegundoBloque" class="col-md-4">    
	                <div class="form-group">
	                  <label for="exampleInputEmail1">Usuario</label>
	                  <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Usuario">
	                </div>
	                
	                <div class="form-group">
	                  <label for="exampleInputEmail1">Contraseña</label>
	                  <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Contraseña">
	                </div>
	
	            </div>
	
	            <div id="GrupoYRol" class="col-md-4">
	               <div class="form-group">
	               		<label>Grupo de trabajo</label>
	                	<s:select id="slcGrupo" cssClass="form-control" list="lstGrupos" listKey="idGrupo" listValue="nombreGrupo"/>
	                </div>
	                
	                <div class="form-group">
	                  	<label>Rol</label>
	                	<s:select id="slcRol" cssClass="form-control" list="lstRoles" listKey="idRol" listValue="descripRol"/>
	                </div>
	            </div>
			</div> <!-- /col-md-12(Segundo) -->

			<div class="form-group">
				<div id="btnGrabar" class="col-xs-6 col-md-6 col-sm-6 col-lg-6" align="center">
				<button type="submit" class="btn btn-danger">Grabar</button>
				</div>
				<div id="btnCancelar" class="col-xs-6 col-md-6 col-sm-6 col-lg-6" align="center">
				<button type="submit" class="btn btn-danger">Cancelar</button>
				</div>
         	</div>
        </div><!-- /box-body -->

      </div><!-- /box box-default -->


     <br><br>    
    </section><!-- /content -->

        </div>

      </div>


</body>

