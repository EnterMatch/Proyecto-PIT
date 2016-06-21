package model;

import java.sql.Date;
/** fecIngIncidencia debe ser parseado como fecha */
public class Incidencia {
	
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
	public Incidencia() {}
	
	public Incidencia(String descripIncidencia, String fecIngIncidencia, String resumenIncidencia,
			String solucionIncidencia, int idCliente, int idGrupo, int idOperador, int idEmpleado, int idEstado,
			int idPrioridad) {
		this.descripIncidencia = descripIncidencia;
		this.fecIngIncidencia = fecIngIncidencia;
		this.resumenIncidencia = resumenIncidencia;
		this.solucionIncidencia = solucionIncidencia;
		this.idCliente = idCliente;
		this.idGrupo = idGrupo;
		this.idOperador = idOperador;
		this.idEmpleado = idEmpleado;
		this.idEstado = idEstado;
		this.idPrioridad = idPrioridad;
	}
	

	
	public Incidencia(int idIncidencia, String descripIncidencia, String fecIngIncidencia, String resumenIncidencia,
			String solucionIncidencia, int idCliente, int idGrupo, int idOperador, int idEmpleado, int idEstado,
			int idPrioridad) {
		super();
		this.idIncidencia = idIncidencia;
		this.descripIncidencia = descripIncidencia;
		this.fecIngIncidencia = fecIngIncidencia;
		this.resumenIncidencia = resumenIncidencia;
		this.solucionIncidencia = solucionIncidencia;
		this.idCliente = idCliente;
		this.idGrupo = idGrupo;
		this.idOperador = idOperador;
		this.idEmpleado = idEmpleado;
		this.idEstado = idEstado;
		this.idPrioridad = idPrioridad;
	}
	
	@Override
	public String toString() {
		return "Incidencia [idIncidencia=" + idIncidencia + ", descripIncidencia=" + descripIncidencia
				+ ", fecIngIncidencia=" + fecIngIncidencia + ", resumenIncidencia=" + resumenIncidencia
				+ ", solucionIncidencia=" + solucionIncidencia + ", idCliente=" + idCliente + ", idGrupo=" + idGrupo
				+ ", idOperador=" + idOperador + ", idEmpleado=" + idEmpleado + ", idEstado=" + idEstado
				+ ", idPrioridad=" + idPrioridad + "]";
	}
	
}