package model;

public class Estado {
	
	private int idEstado;
	private String descripEstado;
	
	public int getIdEstado() {
		return idEstado;
	}
	public void setIdEstado(int idEstado) {
		this.idEstado = idEstado;
	}
	public String getDescripEstado() {
		return descripEstado;
	}
	public void setDescripEstado(String descripEstado) {
		this.descripEstado = descripEstado;
	}
	
	public Estado() {}
	
	public Estado(int idEstado, String descripEstado) {
		super();
		this.idEstado = idEstado;
		this.descripEstado = descripEstado;
	}
	
	@Override
	public String toString() {
		return "Estado [idEstado=" + idEstado + ", descripEstado=" + descripEstado + "]";
	}
	
}
