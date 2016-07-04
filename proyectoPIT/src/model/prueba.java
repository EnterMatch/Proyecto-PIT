package model;

public class prueba {

	
	private int idIncidencia;
	private String descripIncidencia;
	private String resumenIncidencia;
	private String solucionIncidencia;
	private int idCliente;

	public prueba() {}
	
	public prueba(int idIncidencia,String descripIncidencia, String resumenIncidencia, String solucionIncidencia) {
		this.idIncidencia = idIncidencia;
		this.descripIncidencia = descripIncidencia;
		this.resumenIncidencia = resumenIncidencia;
		this.solucionIncidencia = solucionIncidencia;
	}
	
	
	
	public int getIdCliente() {
		return idCliente;
	}

	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}

	@Override
	public String toString() {
		return "Incidencia [idIncidencia="+idIncidencia
				+", descripIncidencia="+ descripIncidencia
				+", resumenIncidencia="+ resumenIncidencia
				+", solucionIncidencia="+ solucionIncidencia 
				+"]";
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

	public String getSolucionIncidencia() {
		return solucionIncidencia;
	}

	public void setSolucionIncidencia(String solucionIncidencia) {
		this.solucionIncidencia = solucionIncidencia;
	}

	
}
