// SE EJECUTA DESDE EL JSP MENÚ: BOTÓN REGISTRO DE INCIDENTE
package action;

import java.text.SimpleDateFormat;
import java.util.Date;

import model.Incidencia;
import service.IncidenciaService;

public class RegistroIncidenciaAction {
	
	private int idCliente;
	private String descripIncidencia;
	private String resumenIncidencia;
	private int idEstado;
	private int idPrioridad;
	private int idGrupo;
	private int idOperador;
	private int idEmpleado;
	
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	
	private String fecIngIncidencia = dateFormat.format(new Date());

	public String registrar(){
		
		Incidencia incidente = new Incidencia(
				descripIncidencia,fecIngIncidencia ,resumenIncidencia,"",idCliente,idGrupo,idOperador,idEmpleado,idEstado,idPrioridad);
		int ok = new IncidenciaService().create(incidente);
		if(ok == 0){
			return "Error";
		}else {		
			return "Exito";
		}
		
	}
	
	public int getIdCliente() {
		return idCliente;
	}
	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}

	public String getDescripIncidencia() {
		return descripIncidencia;
	}
	public void setDescripIncidencia(String descripIncidencia) {
		this.descripIncidencia = descripIncidencia;
	}

	public String getResumenIncidencia() {
		return resumenIncidencia;
	}
	public void setResumenIncidencia(String resumenIncidencia) {
		this.resumenIncidencia = resumenIncidencia;
	}

	public int getIdEstado() {
		return idEstado;
	}
	public void setIdEstado(int idEstado) {
		this.idEstado = idEstado;
	}

	public int getIdPrioridad() {
		return idPrioridad;
	}
	public void setIdPrioridad(int idPrioridad) {
		this.idPrioridad = idPrioridad;
	}

	public int getIdGrupo() {
		return idGrupo;
	}
	public void setIdGrupo(int idGrupo) {
		this.idGrupo = idGrupo;
	}

	public int getIdOperador() {
		return idOperador;
	}
	public void setIdOperador(int idOperador) {
		this.idOperador = idOperador;
	}

	public int getIdEmpleado() {
		return idEmpleado;
	}
	public void setIdEmpleado(int idEmpleado) {
		this.idEmpleado = idEmpleado;
	}

	public String getFecIngIncidencia() {
		return fecIngIncidencia;
	}
	public void setFecIngIncidencia(String fecIngIncidencia) {
		this.fecIngIncidencia = fecIngIncidencia;
	}
	
}
