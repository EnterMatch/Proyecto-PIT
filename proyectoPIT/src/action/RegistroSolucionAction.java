// SE EJECUTA DESDE EL JSP MENÚ: BOTÓN REGISTRAR SOLUCIÓN
package action;

import model.Incidencia;
import service.IncidenciaService;

public class RegistroSolucionAction {
	private int idCliente;
	private String descripIncidencia;
	private String resumenIncidencia;
	private int idEstado;
	private int idPrioridad;
	private int idGrupo;
	private int idOperador;
	private int idEmpleado;
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
	
	public String registrar(){
		

			return "Exito";
		
		
	}
	
	
	
}
