package interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.StrutsStatics;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.util.ValueStack;

import model.Empleado;
import model.Grupo;
import model.Operador;
import model.Rol;
import model.Usuario;
import service.EmpleadoService;
import service.GrupoService;
import service.OperadorService;
import service.RolService;

public class PersonaInterceptor extends AbstractInterceptor implements StrutsStatics {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private static final String USER_HANDLE = "QUADRAN_USER_SESSSION_HANDLE";

	// SE RECIBE ID DEL USUARIO
	public void listados(ActionInvocation invocation, int id) {
		System.out.println("Inicio del listado");
		ValueStack stack = invocation.getStack();

		EmpleadoService empleadoService = new EmpleadoService();
		OperadorService operadorService = new OperadorService();
		
		Empleado e = empleadoService.obtain(id);
		Operador o = operadorService.obtain(id);
		
		if(e!=null){
			Rol r = new RolService().obtain(e.getIdRol());
			Grupo g = new GrupoService().obtain(e.getIdGrupo());
			stack.set("idEmpleado", id);
			stack.set("NombrePersona", e.getNombrePersona());
			stack.set("ApeMatPersona", e.getApeMatPersona());
			stack.set("ApePatPersona", e.getApePatPersona());
			stack.set("EmailPersona", e.getEmailPersona());
			stack.set("NombreGrupo", g.getNombreGrupo());
			stack.set("DescripRol", r.getDescripRol());
		}
		else {
			Rol r = new RolService().obtain(o.getId_rol());
			stack.set("idOperador", id);
			stack.set("NombrePersona", o.getNombrePersona());
			stack.set("ApeMatPersona", o.getApeMatPersona());
			stack.set("ApePatPersona", o.getApePatPersona());
			stack.set("EmailPersona", o.getEmailPersona());
			stack.set("DescripRol", r.getDescripRol());
		}
		System.out.println("Fin del listado");
	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		System.out.println("---------------------------------------------------------");
		System.out.println("Inicio PersonaInterceptor");
		final ActionContext context = invocation.getInvocationContext();
		HttpServletRequest request = (HttpServletRequest) context.get(HTTP_REQUEST);
		HttpSession session = request.getSession(false);
		Usuario user = (Usuario) session.getAttribute(USER_HANDLE);
		listados(invocation, user.getIdUsuario());
		System.out.println("Fin De PersonaInterceptor");
		return invocation.invoke();
	}

}
