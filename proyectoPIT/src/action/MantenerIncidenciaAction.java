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
	
	private Incidencia incidencia;
	
	private int idIncidencia;
	private String descripIncidencia;
	private String resumenIncidencia;
	private String solucionIncidencia;
	private int idGrupo;
	private int idEmpleado;
	private int idEstado;
	private int idPrioridad;

	public String mantenerIncidente(){		
		System.out.println(incidencia);
		System.out.println("resumenIncidencia"+resumenIncidencia);
		System.out.println("idIncidencia"+idIncidencia);
		System.out.println("descripIncidencia"+descripIncidencia);
		System.out.println("solucionIncidencia"+solucionIncidencia);
		Incidencia i =  new Incidencia(idIncidencia, descripIncidencia, resumenIncidencia, solucionIncidencia);
		System.out.println(""+"Inicio Mantener");
		System.out.println(new Incidencia(idIncidencia, descripIncidencia, resumenIncidencia, solucionIncidencia));
		new IncidenciaService().update(i);
		System.out.println("Fin Mantener");
		return "mantener";
	}
	
	

	public Incidencia getIncidencia() {
		return incidencia;
	}



	public void setIncidencia(Incidencia incidencia) {
		this.incidencia = incidencia;
	}



	public String getSolucionIncidencia() {
		return solucionIncidencia;
	}



	public void setSolucionIncidencia(String solucionIncidencia) {
		this.solucionIncidencia = solucionIncidencia;
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

	public String getResumenIncidencia() {
		return resumenIncidencia;
	}

	public void setResumenIncidencia(String resumenIncidencia) {
		this.resumenIncidencia = resumenIncidencia;
	}

	public String getSolucion_incidencia() {
		return solucionIncidencia;
	}

	public void setSolucion_incidencia(String solucionIncidencia) {
		this.solucionIncidencia = solucionIncidencia;
	}

	public int getIdGrupo() {
		return idGrupo;
	}

	public void setIdGrupo(int idGrupo) {
		this.idGrupo = idGrupo;
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
