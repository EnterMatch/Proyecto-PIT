package interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.StrutsStatics;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.util.ValueStack;

import model.Incidencia;
import model.Usuario;
import service.IncidenciaService;

public class TecnicoInterceptor extends AbstractInterceptor implements StrutsStatics {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final String USER_HANDLE = "QUADRAN_USER_SESSSION_HANDLE";

	private List<Incidencia> lstIncidente;

	// SE RECIBE ID DEL USUARIO
	public void listados(ActionInvocation invocation, int id) {
		System.out.println("Inicio del listado");
		ValueStack stack = invocation.getStack();
		IncidenciaService is = new IncidenciaService();
		lstIncidente = is.read_Empleado(id);
		stack.set("lstIncidente", lstIncidente);
		System.out.println("Fin del listado");
	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		System.out.println("---------------------------------------------------------");
		System.out.println("TecnicoInterceptor");
		final ActionContext context = invocation.getInvocationContext();
		HttpServletRequest request = (HttpServletRequest) context.get(HTTP_REQUEST);
		HttpSession session = request.getSession(false);
		if (session.getAttribute(USER_HANDLE) != null) {
			Usuario user = (Usuario) session.getAttribute(USER_HANDLE);
			System.out.println("Context:       " + invocation.getInvocationContext().getName());
			System.out.println("SesionActual: " + user);
			if (invocation.getInvocationContext().getName().equals("manteniendo")) {
				
				int idIncidencia = Integer.parseInt(request.getParameter("idIncidencia"));
				String descripIncidencia = request.getParameter("descripIncidencia");
				String resumenIncidencia = request.getParameter("resumenIncidencia");
				String solucionIncidencia = request.getParameter("solucionIncidencia");
				
				Incidencia i =  new Incidencia(idIncidencia, descripIncidencia, resumenIncidencia, solucionIncidencia);
				
				System.out.println(i);

				new IncidenciaService().update(i);
				System.out.println("Fin Mantener");
				return "mantener";
				
			}
			listados(invocation, user.getIdUsuario());
			return invocation.invoke();
		}
		System.out.println("Fin TecnicoInterceptor");
		return "error";
	}
}