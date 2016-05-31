package model;

public class Prioridad {
	
	private int idPrioridad;
	private String descripPrioridad;
	
	public int getIdPrioridad() {
		return idPrioridad;
	}
	public void setIdPrioridad(int idPrioridad) {
		this.idPrioridad = idPrioridad;
	}
	public String getDescripPrioridad() {
		return descripPrioridad;
	}
	public void setDescripPrioridad(String descripPrioridad) {
		this.descripPrioridad = descripPrioridad;
	}
	
	public Prioridad() {}
	
	public Prioridad(int idPrioridad, String descripPrioridad) {
		super();
		this.idPrioridad = idPrioridad;
		this.descripPrioridad = descripPrioridad;
	}
	
	@Override
	public String toString() {
		return "Prioridad [idPrioridad=" + idPrioridad + ", descripPrioridad=" + descripPrioridad + "]";
	}
	
}