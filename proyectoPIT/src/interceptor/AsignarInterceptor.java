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

import model.Empleado;
import model.Grupo;
import model.Incidencia;
import model.Rol;
import model.Usuario;
import service.EmpleadoService;
import service.GrupoService;
import service.IncidenciaService;
import service.RolService;

public class AsignarInterceptor extends AbstractInterceptor implements StrutsStatics {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final String USER_HANDLE = "QUADRAN_USER_SESSSION_HANDLE";

	private List<Incidencia> lstIncidente;
	private List<Incidencia> lstIncidentesSinAsignar;
	private List<Incidencia> lstIncidentesAsignados;
	private List<Empleado> lstEmpleado;

	// SE RECIBE ID DEL USUARIO
	public void listados(ActionInvocation invocation, int id) {
		System.out.println("Inicio del listado");
		ValueStack stack = invocation.getStack();
		IncidenciaService is = new IncidenciaService();

		EmpleadoService empleadoService = new EmpleadoService();
		Empleado e = empleadoService.obtain(id);
		Grupo g = new GrupoService().obtain(e.getIdGrupo());
		Rol r = new RolService().obtain(e.getIdRol());
		stack.set("idEmpleado", id);
		stack.set("NombrePersona", e.getNombrePersona());
		stack.set("ApeMatPersona", e.getApeMatPersona());
		stack.set("ApePatPersona", e.getApePatPersona());
		stack.set("EmailPersona", e.getEmailPersona());
		stack.set("NombreGrupo", g.getNombreGrupo());
		stack.set("DescripRol", r.getDescripRol());

		lstIncidente = is.read_Grupo(e.getIdGrupo());
		lstIncidentesSinAsignar = new ArrayList<Incidencia>(lstIncidente);
		lstIncidentesAsignados = new ArrayList<Incidencia>(lstIncidente);
		lstEmpleado = empleadoService.readEmpleadoIn(e);
		
		for (Incidencia incidente : lstIncidente) {
			if (incidente.getIdEmpleado() != 0) {
				System.out.println("Asignados : " + incidente);
				lstIncidentesSinAsignar.remove(incidente);
			} else {
				System.out.println("No Asignados : " + incidente);
				lstIncidentesAsignados.remove(incidente);
			}
		}
		
		stack.set("lstIncidente", lstIncidente);
		stack.set("lstIncidentesSinAsignar", lstIncidentesSinAsignar);
		stack.set("lstIncidentesAsignados", lstIncidentesAsignados);
		stack.set("lstEmpleado", lstEmpleado);

		System.out.println("Fin del listado");
	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		System.out.println("---------------------------------------------------------");
		System.out.println("Interceptor");
		final ActionContext context = invocation.getInvocationContext();
		HttpServletRequest request = (HttpServletRequest) context.get(HTTP_REQUEST);
		HttpSession session = request.getSession(false);
		if (session.getAttribute(USER_HANDLE) != null) {
			Usuario user = (Usuario) session.getAttribute(USER_HANDLE);
			System.out.println("Context:       " + invocation.getInvocationContext().getName());
			System.out.println("SesionActual: " + user);
			if (invocation.getInvocationContext().getName().equals("verificar")) {
				String idIncidencia = (String) request.getParameter("idIncidencia");
				System.out.println("IdIncidente:       " + idIncidencia);
				ValueStack stack = invocation.getStack();
				stack.set("idIncidencia", idIncidencia);
			}
			if (invocation.getInvocationContext().getName().equals("asignar")) {
				int idIncidencia = Integer.parseInt(request.getParameter("idIncidencia"));
				int idEmpleado = Integer.parseInt(request.getParameter("idEmpleado"));
				Incidencia incidencia = new Incidencia(idIncidencia, idEmpleado, "", "", "");
				System.out.println("Incidente:       " + incidencia);
				new IncidenciaService().update(incidencia);
				listados(invocation, user.getIdUsuario());
				return "asignado";
			}
			listados(invocation, user.getIdUsuario());
			return invocation.invoke();
		}
		System.out.println("Fin interceptor");
		return "error";
	}

}