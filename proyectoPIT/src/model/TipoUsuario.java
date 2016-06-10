package model;

public class TipoUsuario {
	private int idTipoUsuario;
	private String descripTipoUsuario;
	public int getIdTipoUsuario() {
		return idTipoUsuario;
	}
	
	public void setIdTipoUsuario(int idTipoUsuario) {
		this.idTipoUsuario = idTipoUsuario;
	}
	public String getDescripTipoUsuario() {
		return descripTipoUsuario;
	}
	public void setDescripTipoUsuario(String descripTipoUsuario) {
		this.descripTipoUsuario = descripTipoUsuario;
	}

	@Override
	public String toString() {
		return "TipoUsuario [idTipoUsuario=" + idTipoUsuario + ", descripTipoUsuario=" + descripTipoUsuario + "]";
	}
	
	public TipoUsuario() {}

	public TipoUsuario(int idTipoUsuario, String descripTipoUsuario) {
		super();
		this.idTipoUsuario = idTipoUsuario;
		this.descripTipoUsuario = descripTipoUsuario;
	}
	
	
}
