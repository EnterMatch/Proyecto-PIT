package model;

public class Usuario {
	
	private int id_usu;
	private String nombre;
	private String clave;
	private int id_tipo_usu;
	
	public Usuario(int id_usu, String nombre, String clave, int id_tipo_usu) {
		super();
		this.id_usu = id_usu;
		this.nombre = nombre;
		this.clave = clave;
		this.id_tipo_usu = id_tipo_usu;
	}

	public int getId_usu() {
		return id_usu;
	}

	public void setId_usu(int id_usu) {
		this.id_usu = id_usu;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getClave() {
		return clave;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}

	public int getId_tipo_usu() {
		return id_tipo_usu;
	}

	public void setId_tipo_usu(int id_tipo_usu) {
		this.id_tipo_usu = id_tipo_usu;
	}
	
	
	

}
