
<%@ taglib uri="/struts-tags" prefix="s" %>  
	<header class="main-header">
    <a href="../../index2.html" class="logo">
      <span class="logo-mini"><b>A</b>LT</span>
      <span class="logo-lg"><b>Admin</b>LTE</span>
    </a>
    <nav class="navbar navbar-static-top" role="navigation">
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <li class="dropdown messages-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success">1</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">1 nuevo mensaje</li>
              <li>
                <ul class="menu">
                  <li><!-- start message -->
                    <a href="#">
                      <div class="pull-left">
                        <img src="image/usuario/user2-160x160.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Alerta de incidente
                        <small><i class="fa fa-clock-o"></i> 5 mins</small>
                      </h4>
                      <p>Necesitamos tu ayuda!</p>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href="#">Ver todos los mensajes</a></li>
            </ul>
          </li>
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="image/usuario/user2-160x160.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs">Hola <s:property value="NombrePersona"/> !</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="image/usuario/user2-160x160.jpg" class="img-circle" alt="User Image">
                <p>
                  <s:property value="NombrePersona"/> <s:property value="ApePatPersona"/><br>
                  <s:property value="NombreGrupo"/> - <s:property value="DescripRol"/>
                </p>
              </li>
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Perfil</a>
                </div>
                <div class="pull-right">
                  <a href="CerrarSesion" class="btn btn-default btn-flat">Cerrar Sesión</a>
                </div>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </nav>
  </header>

<aside class="main-sidebar">
    <section class="sidebar">
      <div class="user-panel">
        <div class="pull-left image">
          <img src="image/usuario/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><s:property value="NombrePersona"/> <s:property value="ApePatPersona"/></p>
        </div>
      </div>
      
      <ul class="sidebar-menu">
        <li class="header">MENU</li>
        <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Inicio</span></a></li>

        <s:set name="privilegios" value="DescripRol"/>
        
        <s:if test="%{#privilegios=='Jefe de equipo'}">
        		<li class="treeview">
          			<a href="#">
            			<i class="fa fa-pie-chart"></i>
            				<span>Incidente</span>
            			<i class="fa fa-angle-left pull-right"></i>
          			</a>
          			<ul class="treeview-menu">
            			<li><a href="ConsultarIncidenteJefe"><i class="fa fa-circle-o"></i>Incidentes Pendientes</a></li><!-- AsignarIncidente -->
            			<li><a href="ConsultarIncidenteJefeAsignados"><i class="fa fa-circle-o"></i>Incidentes Asignados</a></li><!-- AsignarIncidente -->
          			</ul>
        		</li>
        		<li class="treeview">
          			<a href="#">
            			<i class="fa fa-pie-chart"></i>
            				<span>BD de Conocimiento</span>
            			<i class="fa fa-angle-left pull-right"></i>
          			</a>
          			<ul class="treeview-menu">
            			<li><a href="ListarBD"><i class="fa fa-circle-o"></i> Consultar BD</a></li>
          			</ul>
        		</li>
        		<li class="treeview">
          			<a href="#">
            			<i class="fa fa-pie-chart"></i>
            				<span>Reportes</span>
            			<i class="fa fa-angle-left pull-right"></i>
          			</a>
          			<ul class="treeview-menu">
            			<li><a href="ReporteIncidente"><i class="fa fa-circle-o"></i>Reporte de Incidentes</a></li>
          			</ul>
        		</li>	
        </s:if>
        
        <s:elseif test="%{#privilegios=='TÃ©cnico'}">
        	   	<li class="treeview">
          			<a href="#">
            			<i class="fa fa-pie-chart"></i>
            				<span>Incidente</span>
            			<i class="fa fa-angle-left pull-right"></i>
          			</a>
          			<ul class="treeview-menu">
            			<li><a href="ListarIncidente"><i class="fa fa-circle-o"></i>Listar Incidente</a></li><!-- MantenerIncidente -->
          			</ul>
        		</li>
        </s:elseif>
        
        <s:elseif test="%{#privilegios=='Especialista'}">
        	   	<li class="treeview">
          			<a href="#">
            			<i class="fa fa-pie-chart"></i>
            				<span>Incidente</span>
            			<i class="fa fa-angle-left pull-right"></i>
          			</a>
          			<ul class="treeview-menu">
            			<li><a href="ListarIncidente"><i class="fa fa-circle-o"></i>Listar Incidente</a></li><!-- MantenerIncidente -->
          			</ul>
        		</li>
        </s:elseif>
        
        <s:else>
                <li class="treeview">
          			<a href="#">
            			<i class="fa fa-pie-chart"></i>
            				<span>Incidente</span>
            			<i class="fa fa-angle-left pull-right"></i>
          			</a>
          			<ul class="treeview-menu">
            			<li><a href="RegistrarIncidente">	<i class="fa fa-circle-o"></i>	Registro de incidente	</a></li>
            			<li><a href="ConsultarIncidenteOperador">	<i class="fa fa-circle-o"></i>	Consultar Incidente		</a></li><!-- MantenerIncidente -->
          			</ul>
        		</li>
        		<li class="treeview">
          			<a href="#">
            			<i class="fa fa-pie-chart"></i>
            				<span>BD de Conocimiento</span>
            			<i class="fa fa-angle-left pull-right"></i>
          			</a>
          			<ul class="treeview-menu">
            			<li><a href="ListarBD"><i class="fa fa-circle-o"></i> Consultar BD</a></li>
          			</ul>
        		</li>
        		<li class="treeview">
          			<a href="#">
            			<i class="fa fa-pie-chart"></i>
            				<span>Usuario</span>
            			<i class="fa fa-angle-left pull-right"></i>
          			</a>
          			<ul class="treeview-menu">
            			<li><a href="RegistrarUsuario"><i class="fa fa-circle-o"></i>Registro de Usuario</a></li>
          			</ul>
        		</li>
        </s:else>
      </ul>
    </section>
  </aside>