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

	public List<Estado> 	estados;
	
	public void	cargarCombosEstadosPrioridad(){
		estados 		= new EstadoService().read();
	}
	
	public String mantener(){
		cargarCombosEstadosPrioridad();
		return "mantener";
	}
	
	public String mantenerIncidente(){
		Incidencia incidente=new Incidencia(descripIncidencia,fecIngIncidencia ,resumenIncidencia,"",idCliente,idGrupo,idOperador,idEmpleado,idEstado,idPrioridad);
		new IncidenciaService().update(incidente);
		return "ok";
	}
	
	public String cargarCombos(){
		cargarCombosEstadosPrioridad();
		return "ok";
	}
	
	public int getIdIncidencia() {
		int idIncidencia = new IncidenciaService().read().size();
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
	

	
}
