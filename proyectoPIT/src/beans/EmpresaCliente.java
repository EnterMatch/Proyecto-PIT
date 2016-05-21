package beans;

public class EmpresaCliente {
	private int id_emp;
    private int id_per;
    
	public EmpresaCliente(int id_emp, int id_per) {
		super();
		this.id_emp = id_emp;
		this.id_per = id_per;
	}

	public int getId_emp() {
		return id_emp;
	}

	public void setId_emp(int id_emp) {
		this.id_emp = id_emp;
	}

	public int getId_per() {
		return id_per;
	}

	public void setId_per(int id_per) {
		this.id_per = id_per;
	}
    
    
}
