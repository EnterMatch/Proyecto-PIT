// SE EJECUTA DESDE EL BOTÓN ASIGNAR EN EL JSP LISTARINCIDENTE
package action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import model.Incidencia;
import service.IncidenciaService;

public class AsignarIncidenciaAction extends ActionSupport implements ServletRequestAware  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public int idEmpleado;
	
	public Incidencia incidencia;
	
	public int idIncidencia;
	
	public Incidencia getIncidencia() {
		return incidencia;
	}
	
	public void setIncidencia(Incidencia incidencia) {
		this.incidencia = incidencia;
	}

	public int getIdEmpleado() {
		return idEmpleado;
	}

	public void setIdEmpleado(int idEmpleado) {
		this.idEmpleado = idEmpleado;
	}
	
	public int getIdIncidencia() {
		return idIncidencia;
	}

	public void setIdIncidencia(int idIncidencia) {
		this.idIncidencia = idIncidencia;
	}
	
	public String asignar() {

		return "asignar";
		
	}
	
	private HttpServletRequest request;
	
	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	
	public String verificarEmpleado() {
		System.out.println("A: "+idIncidencia);

		return "asignar";
	}
}
