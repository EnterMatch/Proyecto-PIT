
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
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
          </div>
        </div>

        <div class="box-body">

		<form action="registroSolucion">
            <div class="col-md-6">
              <div class="form-group">
              <label>Id de Solución</label>
              <input readonly value="I000001" type="email" class="form-control" id="exampleInputEmail1" placeholder="Id solución">
              <label>Grupo de trabajo</label>
              <select disabled class="form-control select2" style="width: 100%;">
              <option  selected="selected">TORET_O</option>
              </select>
              </div>
            </div> 

            <div class="col-md-6">
              <div class="box-body pad">
              <textarea class="textarea" placeholder="Descipcion de solución" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
              </div>
            </div>
            
	    <div class="form-group">
            <div class="col-xs-6" align="center">
              <button type="submit" class="btn btn-danger">Grabar</button>
            </div>
            <div class="col-xs-6" align="center">
              <button  class="btn btn-danger">Cancelar</button>
            </div>
      </div>
	</form>


        </div>
      </div>



     <br><br>    
    </section>
</div>
</div>
</body>
