// SE EJECUTA DESDE EL JSP MENÚ: BOTÓN REGISTRO DE INCIDENTE
package action;

import model.Incidencia;
import service.IncidenciaService;

public class RegistroIncidenciaAction {
	
	private int idCliente;
	private String descripIncidencia;
	private String resumenIncidencia;
	private int idPrioridad;
	private int idGrupo;
	private int idOperador;
	private int idEmpleado;
	
	public String registrar(  ){
		System.out.println("descripIncidencia "+descripIncidencia);
		System.out.println("resumenIncidencia "+resumenIncidencia);
		System.out.println("idCliente "+idCliente);
		System.out.println("idGrupo "+idGrupo);
		System.out.println("idOperador "+idOperador);
		System.out.println("idEmpleado "+idEmpleado);
		System.out.println("idPrioridad "+idPrioridad);
		Incidencia incidente = new Incidencia(descripIncidencia,resumenIncidencia,idCliente,idGrupo,idOperador,1,idPrioridad);
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

}
