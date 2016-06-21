// SE EJECUTA DESDE EL BOTÓN RESOLVER INCIDENTE EN EL JSP CONSULTARINCIDENTE
package action;

import java.io.IOException;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import model.Estado;
import model.Incidencia;
import model.Prioridad;
import service.ClienteService;
import service.EmpresaService;
import service.EstadoService;
import service.GrupoService;
import service.IncidenciaService;
import service.PrioridadService;

public class MantenerIncidenciaAction extends ActionSupport {

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

	public String mantenerIncidente(){		
		//Incidencia incidente=new Incidencia(descripIncidencia,fecIngIncidencia ,resumenIncidencia,"",idCliente,idGrupo,idOperador,idEmpleado,idEstado,idPrioridad);
		//new IncidenciaService().update(incidente);
		return "ok";
	}
	
}
