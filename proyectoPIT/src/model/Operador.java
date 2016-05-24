package beans;

public class Operador {
	
	private int id_per;
	private int id_tipo_ope;
	private int id_grupo;
	
	public Operador(int id_per, int id_tipo_ope, int id_grupo) {
		super();
		this.id_per = id_per;
		this.id_tipo_ope = id_tipo_ope;
		this.id_grupo = id_grupo;
	}

	public int getId_per() {
		return id_per;
	}

	public void setId_per(int id_per) {
		this.id_per = id_per;
	}

	public int getId_tipo_ope() {
		return id_tipo_ope;
	}

	public void setId_tipo_ope(int id_tipo_ope) {
		this.id_tipo_ope = id_tipo_ope;
	}

	public int getId_grupo() {
		return id_grupo;
	}

	public void setId_grupo(int id_grupo) {
		this.id_grupo = id_grupo;
	}
	
	

}
