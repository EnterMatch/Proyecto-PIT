package model;

public class Persona {
	
	private int id_per;
	private String nombre;
	private String apepat;
	private String apemat;
	private String email;
	private int id_usu;
	
	public Persona(int id_per, String nombre, String apepat, String apemat,
			String email, int id_usu) {
		super();
		this.id_per = id_per;
		this.nombre = nombre;
		this.apepat = apepat;
		this.apemat = apemat;
		this.email = email;
		this.id_usu = id_usu;
	}

	public int getId_per() {
		return id_per;
	}

	public void setId_per(int id_per) {
		this.id_per = id_per;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApepat() {
		return apepat;
	}

	public void setApepat(String apepat) {
		this.apepat = apepat;
	}

	public String getApemat() {
		return apemat;
	}

	public void setApemat(String apemat) {
		this.apemat = apemat;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getId_usu() {
		return id_usu;
	}

	public void setId_usu(int id_usu) {
		this.id_usu = id_usu;
	}
	
	

}
