package interceptor;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.StrutsStatics;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.util.ValueStack;

import model.Cliente;
import model.Empleado;
import model.Empresa;
import model.Estado;
import model.Grupo;
import model.Incidencia;
import model.Operador;
import model.Prioridad;
import model.Rol;
import model.TipoUsuario;
import model.Usuario;
import service.ClienteService;
import service.EmpleadoService;
import service.EmpresaService;
import service.EstadoService;
import service.GrupoService;
import service.IncidenciaService;
import service.OperadorService;
import service.PrioridadService;
import service.RolService;
import service.UsuarioService;

public class RolesInterceptor extends AbstractInterceptor implements StrutsStatics {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final String USER_HANDLE = "QUADRAN_USER_SESSSION_HANDLE";
	private static final String USERNAME = "nombreUsuario";
	private static final String PASSWORD = "claveUsuario";

	Usuario usuario;
	
	private List<Empresa> 		empresas;
	private List<Cliente> 		clientes;
	private List<Grupo> 		grupos;
	private List<Estado> 		estados;
	private List<Prioridad> 	prioridades;
	private	List<Incidencia>	lstIncidente;
	private List<Rol>			lstRoles;
	private List<TipoUsuario> 	lstTipoUsuarios = new ArrayList<TipoUsuario>();
	
	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario user) {
		this.usuario = user;
	}

	public void init() {
		System.out.println("Inicio de Intercepto");
	}
	
	public void destroy() {
		System.out.println("Fin de Intercepto");
	}

	public void listados (ActionInvocation invocation, int id){
		System.out.println("Inicio del listado");
		
		lstIncidente 	= new IncidenciaService().read_Empleado(id);
		estados 		= new EstadoService().read();
		prioridades 	= new PrioridadService().read();
		empresas		= new EmpresaService().read();
		clientes		= new ClienteService().read();
		grupos			= new GrupoService().read();
		
		lstRoles 		= new RolService().read();
		lstTipoUsuarios.add(new TipoUsuario(1, "Empleado"));
		lstTipoUsuarios.add(new TipoUsuario(2, "Operador"));
		
		ValueStack stack=invocation.getStack(); 
        stack.set("lstIncidente",lstIncidente);
        stack.set("estados", estados);
        stack.set("prioridades", prioridades);
        stack.set("estados", estados);
        stack.set("empresas", empresas);
        stack.set("clientes", clientes);
        stack.set("grupos", grupos);
        
        stack.set("lstRoles", lstRoles);
        stack.set("lstTipoUsuarios", lstTipoUsuarios);
        
		if(new EmpleadoService().obtain(id) != null){
			Empleado e = new EmpleadoService().obtain(id);
	        stack.set("NombrePersona", e.getNombrePersona());
	        stack.set("ApeMatPersona", e.getApeMatPersona());
	        stack.set("ApePatPersona", e.getApePatPersona());
	        stack.set("EmailPersona", e.getEmailPersona());
	        Grupo g =new GrupoService().obtain(e.getIdGrupo());
	        stack.set("NombreGrupo", g.getNombreGrupo());
	        Rol r = new RolService().obtain(e.getIdRol());
	        stack.set("DescripRol", r.getDescripRol());
		}
		else if(new OperadorService().obtain(id)!=null){
			Operador o = new OperadorService().obtain(id);
	        stack.set("NombrePersona", o.getNombrePersona());
	        stack.set("ApeMatPersona", o.getApeMatPersona());
	        stack.set("ApePatPersona", o.getApePatPersona());
	        stack.set("EmailPersona", o.getEmailPersona());
		}
        System.out.println("Fin del listado");
	}

	public boolean logueo (HttpServletRequest request, HttpSession session){
		Usuario usuario = new Usuario();
		usuario.setNombreUsuario(request.getParameter (USERNAME));
		usuario.setClaveUsuario(request.getParameter (PASSWORD));
		if(usuario.getNombreUsuario().equals("") || usuario.getClaveUsuario().equals("")){

			return false;
		}
		else if (new UsuarioService().buscarPorNombreYClave(usuario) == null){
			
			return false;
		}
		else{
			UsuarioService us = new UsuarioService();
			Usuario u = us.buscarPorNombreYClave(usuario);
			System.out.println("session: "+u);
			session.setAttribute (USER_HANDLE, u);
			return true;
		}
	}
	
	public List<String> identificacion (ActionInvocation invocation, int id){
		if(new EmpleadoService().obtain(id) != null){
			Empleado e = new EmpleadoService().obtain(id);
			ValueStack stack=invocation.getStack(); 
	        stack.set("NombrePersona", e.getNombrePersona());
	        stack.set("ApeMatPersona", e.getApeMatPersona());
	        stack.set("ApePatPersona", e.getApePatPersona());
	        stack.set("EmailPersona", e.getEmailPersona());
	        Grupo g =new GrupoService().obtain(e.getIdGrupo());
	        stack.set("NombreGrupo", g.getNombreGrupo());
	        Rol r = new RolService().obtain(e.getIdRol());
	        stack.set("DescripRol", r.getDescripRol());
		}
		else if(new OperadorService().obtain(id)!=null){
			Operador o = new OperadorService().obtain(id);
			ValueStack stack=invocation.getStack(); 
	        stack.set("NombrePersona", o.getNombrePersona());
	        stack.set("ApeMatPersona", o.getApeMatPersona());
	        stack.set("ApePatPersona", o.getApePatPersona());
	        stack.set("EmailPersona", o.getEmailPersona());
		}
		return null; 
	}
	
	public String intercept(ActionInvocation invocation) throws Exception {
		System.out.println("---------------------------------------------------------");
		System.out.println("Interceptor");
		final ActionContext context = invocation.getInvocationContext ();
		HttpServletRequest request = (HttpServletRequest) context.get(HTTP_REQUEST);
		HttpSession session =  request.getSession (false);
		if(invocation.getInvocationContext().getName().equals("CerrarSesion")){
				session.setAttribute(USER_HANDLE, null);
				session.removeAttribute(USER_HANDLE);
				session.invalidate();
				System.out.println("Fin interceptor");
				return "error";
		}
		if(invocation.getInvocationContext().getName().equals("bienvenido")){
			logueo(request, session);
			if( session.getAttribute (USER_HANDLE)!=null) {
				Usuario user = (Usuario) session.getAttribute (USER_HANDLE);
				System.out.println("SesionActual: "+user);
				listados(invocation, user.getIdUsuario());
				System.out.println("Fin interceptor");
				return "success";
			}
			else {
				System.out.println("Fin interceptor");
				return "error";
			}
		}
		else if(session.getAttribute(USER_HANDLE)!=null){
			Usuario user = (Usuario) session.getAttribute (USER_HANDLE);
			System.out.println(invocation.getInvocationContext().getName());
			System.out.println("SesionActual: "+user);
			listados(invocation, user.getIdUsuario());
			System.out.println("Fin interceptor");
			return invocation.invoke();
		}
		System.out.println("Fin interceptor");
		return "error";
	}

}

