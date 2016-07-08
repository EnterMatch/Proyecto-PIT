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

public class OperadorInterceptor extends AbstractInterceptor implements StrutsStatics {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final String USER_HANDLE = "QUADRAN_USER_SESSSION_HANDLE";

	private List<Empresa> empresas;
	private List<Cliente> clientes;
	private List<Grupo> grupos;
	private List<Estado> estados;
	private List<Prioridad> prioridades;
	private List<Rol> lstRoles;
	private List<TipoUsuario> lstTipoUsuarios = new ArrayList<TipoUsuario>();
	
	private List<Incidencia> lstIncidente;

	// SE RECIBE ID DEL USUARIO
	public void listados(ActionInvocation invocation, int id) {
		System.out.println("Inicio del listado");
		ValueStack stack = invocation.getStack();
		IncidenciaService is = new IncidenciaService();
		lstIncidente = is.read_Empleado(id);
		// CODIGO AUTOGENERADO PARA EL REGISTRO
		int codNuevaInciden = 0;
		codNuevaInciden = new IncidenciaService().read().size() + 1;
		stack.set("codNuevaInciden", codNuevaInciden);

		// LISTADO GENERAL DE TODAS LAS INCIDENCIAS
		estados = new EstadoService().read();
		prioridades = new PrioridadService().read();
		empresas = new EmpresaService().read();
		clientes = new ClienteService().read();
		grupos = new GrupoService().read();
		lstRoles = new RolService().read();
		lstTipoUsuarios.add(new TipoUsuario(1, "Empleado"));
		lstTipoUsuarios.add(new TipoUsuario(2, "Operador"));

		stack.set("estados", estados);
		stack.set("prioridades", prioridades);
		stack.set("estados", estados);
		stack.set("empresas", empresas);
		stack.set("clientes", clientes);
		stack.set("grupos", grupos);
		stack.set("lstRoles", lstRoles);
		stack.set("lstTipoUsuarios", lstTipoUsuarios);
		
		
		stack.set("lstIncidente", lstIncidente);

		System.out.println("Fin del listado");
	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		System.out.println("---------------------------------------------------------");
		System.out.println("Inicio OperadorInterceptor");
		final ActionContext context = invocation.getInvocationContext();
		HttpServletRequest request = (HttpServletRequest) context.get(HTTP_REQUEST);
		HttpSession session = request.getSession(false);
		if (session.getAttribute(USER_HANDLE) != null) {
			Usuario user = (Usuario) session.getAttribute(USER_HANDLE);
			System.out.println("Context:       " + invocation.getInvocationContext().getName());
			System.out.println("SesionActual: " + user);
			if (invocation.getInvocationContext().getName().equals("registrando")) {
				
				int idCliente = Integer.parseInt(request.getParameter("idCliente"));
				String descripIncidencia = request.getParameter("descripIncidencia");
				String resumenIncidencia = request.getParameter("resumenIncidencia");
				int idPrioridad = Integer.parseInt(request.getParameter("idPrioridad"));
				int idGrupo = Integer.parseInt(request.getParameter("idGrupo"));
				int idOperador = Integer.parseInt(request.getParameter("idOperador"));
				
				Incidencia incidente = new Incidencia(descripIncidencia,resumenIncidencia,idCliente,idGrupo,idOperador,1,idPrioridad);
				System.out.println("Incidente:       " + incidente);
				
				int ok = new IncidenciaService().create(incidente);
				if(ok == 0){
					listados(invocation, user.getIdUsuario());
					return "Error";
				}else {
					listados(invocation, user.getIdUsuario());
					return "Exito";
				}
			}
		}
		System.out.println("Fin OperadorInterceptornterceptor");
		return "error";
	}

}
