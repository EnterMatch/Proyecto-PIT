<%@ taglib uri="/struts-tags" prefix="s" %>  
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
<div class="content-wrapper">

	<section class="content-header">
	<h1>Mantener Incidente</h1>
	<ol class="breadcrumb">
	<li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
	<li><a href="#">Incidente</a></li>
	<li class="active">Mantener Incidente</li>
	</ol>
    </section>

    <section class="content">

		<div class="col-md-7">
        <div class="box box-danger">
            
            <div class="box-header">
            <h3 class="box-title">Datos del incidente</h3>
            </div>
          
            <div class="box-body">
            
			<div class="col-md-4">
			<div class="form-group">
				<label for="exampleInputEmail1">Id de la incidente</label>
				<input value="<s:text name=""><s:property value="id"/></s:text>" readonly class="form-control">
			</div>
			<div class="form-group">
				<label>Empresa</label>
				<select disabled class="form-control select2" style="width: 100%;">
			<option selected="selected">Instituto Cibertec</option>
			</select>
			</div>	
            <div class="form-group">
            <label>Cliente</label>
			<select disabled class="form-control select2" style="width: 100%;">
			<option selected="selected">Jose Alan Brito</option>
			</select>
			</div>
			<div class="form-group">
            <label for="exampleInputEmail1">Resumen</label>
            <input value="Error en mysql" readonly type="email" class="form-control" id="exampleInputEmail1" placeholder="Resumen">
            </div>
        	</div>      
        	
        	
        	<div class="col-md-8">
        	<div class="box-body pad">
        	<label>Descripción</label>
        	<textarea readonly class="textarea" placeholder="Descipcion del incidente" style="width: 100%; height: 100px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
Sale el siguiente error: 
-------------- 
Connection error

Could not connect to MySQL instance at localhost.
Error: Can't connect to local MySQL server through socket '/tmp/mysql.sock'(2)(code 2002) 
Click the 'Ping host' button to see if there is a network problem
---------- 
Al activar el boton me aparece

PING localhost (127.0.0.1): 56 data bytes 
64 bytes from 127.0.0.1: icmp_seq=0 ttl=64 time=0.058 ms 
64 bytes from 127.0.0.1: icmp_seq=1 ttl=64 time=0.042 ms 
...y sigue lo mismo... 
			</textarea>
            </div>
            <div class="form-group">
            <label>Grupo de trabajo</label>
            <select disabled class="form-control select2" style="width: 100%;">
            <option selected="selected">TORET_O</option>
            </select>
            </div>  
            <div class="form-group">
            <label>Usuario</label>
            <select disabled class="form-control select2" style="width: 100%;">
            <option selected="selected">maria Paz Sarmiento</option>
            </select>
            </div>           
			</div>
			
			</div>

        </div>
        </div>

        <div class="col-md-5">
        <div class="box box-primary">
              	<div class="box-header">
              	<h3 class="box-title">Datos del mantenimiento</h3>
              	</div>
              	<div class="box-body">
              	<div class="form-group">
    	<s:label>Estado del incidente</s:label>
    	<s:select cssClass="form-control select2" name="estado"  headerValue="Seleccione Estado" listKey="idEstado" listValue="descripEstado" list="%{estados}" />
              	</div>
              	<div class="box-body pad">
              	<label>Solución</label>
              	<textarea class="textarea" placeholder="Descipcion del incidente" style="width: 100%; height: 175px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
              	La solución es esta: abajo de la ventana que aparece para que te conectes pone, "More options", y una flecha para desplegar un menu, pinchamos, y el lugar donde pone "connect using socket:" escribimos la ruta correcta donde se encuentra el archivo socket, ¿donde?, 
              	Pues mira, vamos a la carpeta que contenga nuestro servidor, el que deberíamos haber instalado, y buscamos una carpeta que ponga etc, la abrimos, y en ella aparecera un archivo llamado "my.cnf", abrimos este usando tex edit, dentro de este archivo aparece un apartado qe pone lo siguiente: 
              	</textarea>
              	</div>
              
				<div class="form-group">
        		<div class="col-xs-6" align="center">
        		<button type="submit" class="btn btn-danger">Grabar</button>
        		</div>
        		<div class="col-xs-6" align="center">
        		<button type="submit" class="btn btn-danger">Cancelar</button>
        		</div>
      			</div>
              
            	</div>
        </div>
        </div>

        


    </section>
  
</div>
</div>
</body>

