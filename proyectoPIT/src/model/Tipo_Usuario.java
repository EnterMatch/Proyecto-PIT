package model;

public class Tipo_Usuario {
	
	private int id_tipo_usu;
	private String descripcion;
	
	public Tipo_Usuario(int id_tipo_usu, String descripcion) {
		super();
		this.id_tipo_usu = id_tipo_usu;
		this.descripcion = descripcion;
	}

	public int getId_tipo_usu() {
		return id_tipo_usu;
	}

	public void setId_tipo_usu(int id_tipo_usu) {
		this.id_tipo_usu = id_tipo_usu;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	

}
