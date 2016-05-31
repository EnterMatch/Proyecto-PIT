package model;

public class Rol {
	
	private int idRol;
	private String descripRol;
	
	public int getIdRol() {
		return idRol;
	}
	public void setIdRol(int idRol) {
		this.idRol = idRol;
	}
	public String getDescripRol() {
		return descripRol;
	}
	public void setDescripRol(String descripRol) {
		this.descripRol = descripRol;
	}
	
	public Rol() {}
	
	public Rol(int idRol, String descripRol) {
		super();
		this.idRol = idRol;
		this.descripRol = descripRol;
	}
	
	@Override
	public String toString() {
		return "Rol [idRol=" + idRol + ", descripRol=" + descripRol + "]";
	}
	
}
