package model;

public class Grupo {
	
	private int idGrupo;
	private String nombreGrupo;
	
	public int getIdGrupo() {
		return idGrupo;
	}
	public void setIdGrupo(int idGrupo) {
		this.idGrupo = idGrupo;
	}
	public String getNombreGrupo() {
		return nombreGrupo;
	}
	public void setNombreGrupo(String nombreGrupo) {
		this.nombreGrupo = nombreGrupo;
	}
	
	public Grupo() {}
	
	public Grupo(int idGrupo, String nombreGrupo) {
		super();
		this.idGrupo = idGrupo;
		this.nombreGrupo = nombreGrupo;
	}
	
	@Override
	public String toString() {
		return "Grupo [idGrupo=" + idGrupo + ", nombreGrupo=" + nombreGrupo + "]";
	}
	
}
