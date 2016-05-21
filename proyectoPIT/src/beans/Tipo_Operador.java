package beans;

public class Tipo_Operador {
	
	private int id_tipo_ope;
	private String descripcion;
	
	public Tipo_Operador(int id_tipo_ope, String descripcion) {
		super();
		this.id_tipo_ope = id_tipo_ope;
		this.descripcion = descripcion;
	}

	public int getId_tipo_ope() {
		return id_tipo_ope;
	}

	public void setId_tipo_ope(int id_tipo_ope) {
		this.id_tipo_ope = id_tipo_ope;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	

}
