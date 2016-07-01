// SE EJECUTA DESDE EL BOTÓN RESOLVER INCIDENTE EN EL JSP CONSULTARINCIDENTE
package action;


import com.opensymphony.xwork2.ActionSupport;

import model.Incidencia;
import service.IncidenciaService;

public class MantenerIncidenciaAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String descripIncidencia;
	private String fecIngIncidencia;
	private String resumenIncidencia;
	private int idCliente;
	private int idGrupo;
	private int idOperador;
	private int idEmpleado;
	private int idEstado;
	private int idPrioridad;

	public String mantenerIncidente(){		
		Incidencia incidente=new Incidencia(descripIncidencia,fecIngIncidencia ,resumenIncidencia,"",idCliente,idGrupo,idOperador,idEmpleado,idEstado,idPrioridad);
		new IncidenciaService().update(incidente);
		return "ok";
	}
	
}
