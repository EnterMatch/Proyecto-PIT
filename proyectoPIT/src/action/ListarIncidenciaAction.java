// SE EJECUTA DESDE EL JSP MENÚ: BOTÓN LISTAR INCIDENTE
package action;

import java.io.IOException;
import java.util.List;


import model.Incidencia;
import service.IncidenciaService;

public class ListarIncidenciaAction {

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
	
	private	List<Incidencia> lstIncidente;
	
	public void	cargarListaIncidencias(){
		
		for(Incidencia i: new IncidenciaService().read()){
			if(i.getIdEstado()==1){
				lstIncidente = new IncidenciaService().read();
			}
		}
	}
	
	public String listarIncidentes() throws IOException {
		lstIncidente = new IncidenciaService().listado();
		return "ok";
	}

	public int getIdIncidencia() {
		return idIncidencia;
	}

	public void setIdIncidencia(int idIncidencia) {
		this.idIncidencia = idIncidencia;
	}

	public String getDescripIncidencia() {
		return descripIncidencia;
	}

	public void setDescripIncidencia(String descripIncidencia) {
		this.descripIncidencia = descripIncidencia;
	}

	public String getFecIngIncidencia() {
		return fecIngIncidencia;
	}

	public void setFecIngIncidencia(String fecIngIncidencia) {
		this.fecIngIncidencia = fecIngIncidencia;
	}

	public String getResumenIncidencia() {
		return resumenIncidencia;
	}

	public void setResumenIncidencia(String resumenIncidencia) {
		this.resumenIncidencia = resumenIncidencia;
	}

	public String getSolucionIncidencia() {
		return solucionIncidencia;
	}

	public void setSolucionIncidencia(String solucionIncidencia) {
		this.solucionIncidencia = solucionIncidencia;
	}

	public int getIdCliente() {
		return idCliente;
	}

	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
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

	public List<Incidencia> getLstIncidente() {
		return lstIncidente;
	}

	public void setLstIncidente(List<Incidencia> lstIncidente) {
		this.lstIncidente = lstIncidente;
	}
	
	
	
}
