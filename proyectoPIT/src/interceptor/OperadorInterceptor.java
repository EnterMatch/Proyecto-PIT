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
import model.Persona;
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

		// CODIGO AUTOGENERADO PARA EL REGISTRO DE INCIDENCIAS
		int codNuevoUsuario = 0;
		codNuevoUsuario = new UsuarioService().read().size()+1;
		stack.set("codNuevoUsuario", codNuevoUsuario);
		
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
		
		ValueStack stack = invocation.getStack();
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
			if (invocation.getInvocationContext().getName().equals("registrandoUsuario")) {
				
				String tipoUsuario = request.getParameter("tipoUsuario");
				String apePatPersona = request.getParameter("apePatPersona");
				String nombrePersona = request.getParameter("nombrePersona");
				String apeMatPersona = request.getParameter("apeMatPersona");
				String emailPersona = request.getParameter("emailPersona");
				int idGrupo = Integer.parseInt(request.getParameter("idGrupo"));
				int idRol = Integer.parseInt(request.getParameter("idRol"));
				String nombreUsuario = request.getParameter("nombreUsuario");
				String claveUsuario = request.getParameter("claveUsuario");
				String repetirClaveUsuario = request.getParameter("repetirClaveUsuario");
				int idPersona = Integer.parseInt(request.getParameter("idPesona"));
			
				System.out.println(idPersona);
				System.out.println(tipoUsuario);
				System.out.println(apePatPersona);
				System.out.println(nombrePersona);
				System.out.println(apeMatPersona);
				System.out.println(emailPersona);
				System.out.println(idGrupo);
				System.out.println(idRol);
				System.out.println(nombreUsuario);
				System.out.println(claveUsuario);
				System.out.println(repetirClaveUsuario);
				
				Persona persona = new Persona(idPersona, nombrePersona, apePatPersona, apeMatPersona, emailPersona);
				Empleado empleado =  new Empleado();
				UsuarioService usuarioService = new UsuarioService();
				EmpleadoService empleadoService = new EmpleadoService();
				OperadorService operadorService = new OperadorService();
				
				// Validar que todos los campos estén llenos
				if(nombrePersona.equals("")|| apePatPersona.equals("")||
						apePatPersona.equals("")|| emailPersona.equals("")||
						nombreUsuario.equals("")|| claveUsuario.equals("")){
					stack.set("mensajeError", "Falta completar datos");
					return "Error";
				}
				// Validar que el usuario ingresado no exista
				for(Usuario usuarioItem : usuarioService.read()){
					if(usuarioItem.getNombreUsuario().equals(nombreUsuario)){
						stack.set("mensajeError", "El usuario ingresado ya existe");
						return "Error";
					}
				}
				int result = 0;
				if(tipoUsuario.equals("1")){
					empleado = new Empleado(persona, idGrupo, idRol);
					empleadoService.create(empleado);
					result = usuarioService.create(new Usuario(idPersona, nombreUsuario, claveUsuario));
				}else{
					Operador operador = new Operador(persona);
					operadorService.create(operador);
					result = usuarioService.create(new Usuario(idPersona, nombreUsuario, claveUsuario));
				}
				if(result!=1){
					listados(invocation, user.getIdUsuario());
					stack.set("mensajeError", "Error al ingresar el registro");
				}else{
					listados(invocation, user.getIdUsuario());
					stack.set("mensajeError", "Registro Agregado");
				}
			}
			
		}
		System.out.println("Fin OperadorInterceptornterceptor");
		return "Error";
	}

}
