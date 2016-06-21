package interceptor;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.StrutsStatics;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.interceptor.Interceptor;
import com.opensymphony.xwork2.util.ValueStack;

import action.LogueoAction;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import model.Cliente;
import model.Empresa;
import model.Estado;
import model.Grupo;
import model.Incidencia;
import model.Prioridad;
import model.Rol;
import model.TipoUsuario;
import model.Usuario;
import service.ClienteService;
import service.EmpresaService;
import service.EstadoService;
import service.GrupoService;
import service.IncidenciaService;
import service.PrioridadService;
import service.RolService;

public class RolesInterceptor extends AbstractInterceptor implements StrutsStatics {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final Log log = LogFactory.getLog(RolesInterceptor.class);
	private static final String USER_HANDLE = "loggedInUser";
	
	private Usuario usuario;
	
	private int idIncidencia;
	private String descripIncidencia;
	private String fecIngIncidencia;
	private String resumenIncidencia;
	private String solucionIncidencia;
	private int idCliente;
	private int idGrupo;
	private int idOperador;
	private int idEmpleado;
	private int idEstado;
	private int idPrioridad;
	
	private List<Empresa> 		empresas;
	private List<Cliente> 		clientes;
	private List<Grupo> 		grupos;
	private List<Estado> 		estados;
	private List<Prioridad> 	prioridades;
	private	List<Incidencia>	lstIncidente;
	private List<Rol>			lstRoles;
	private List<TipoUsuario> 	lstTipoUsuarios = new ArrayList<TipoUsuario>();
	
	@Override
	public void destroy() {
		log.info("Intializing LoginInterceptor");
	}

	public String intercept(ActionInvocation invocation) throws Exception {
        
		
		
		lstIncidente 	= new IncidenciaService().read();
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
		/*
		final ActionContext context = invocation.getInvocationContext();
		HttpServletRequest request = (HttpServletRequest) context.get(HTTP_REQUEST);
		HttpSession session = request.getSession();
        Usuario user = (Usuario) session.getAttribute(USER_HANDLE);
        */
        Map<String, Object> session = invocation.getInvocationContext().getSession();

        String user = (String) session.get("loggedInUser");
        
        if(user == ""){
        	System.out.println("no");
        }
        else {
        	System.out.println("si");
        	stack.set("NombreUsuario", user);
		}
        
		/*
		final ActionContext context = invocation.getInvocationContext();
		HttpServletRequest request = (HttpServletRequest) context.get(HTTP_REQUEST);
		HttpSession session = request.getSession();
		
		// Is there a "user" object stored in the user's HttpSession?
		Object user = session.getAttribute(USER_HANDLE);
		if (user == null) {
			// The user has not logged in yet.
			/* The user is attempting to log in. */
		/*
        if (invocation.getAction().getClass().equals(LogueoAction.class ))
			{	
				System.out.println("1");
				return invocation.invoke();
			}
			System.out.println("2");
			return "login";
		} else {
			System.out.println("3");
			return invocation.invoke();
		}
		*/
        return invocation.invoke();
		
	}
	
	@Override
	public void init() {
		// TODO Auto-generated method stub
		
	}
	
}

