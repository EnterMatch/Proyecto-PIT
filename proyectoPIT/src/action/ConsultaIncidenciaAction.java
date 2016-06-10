// SE EJECUTA DESDE EL JSP MENÚ: BOTÓN CONSULTAR INCIDENTE
package action;
import java.util.List;

import model.Incidencia;
import model.Prioridad;
import service.IncidenciaService;
import service.PrioridadService;;

public class ConsultaIncidenciaAction {
	
	public List<Incidencia> lstIncidente;
	
	
	public String listarIncidentes(){
		IncidenciaService servicio = new IncidenciaService();
		
		lstIncidente = servicio.read();
		
		return "ok";
	}
	

}
