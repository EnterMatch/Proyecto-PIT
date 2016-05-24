package model;

public class Empresa {
	private int id_emp;
    private String razSoc;
    
	public Empresa(int id_emp, String razSoc) {
		super();
		this.id_emp = id_emp;
		this.razSoc = razSoc;
	}

	public int getId_emp() {
		return id_emp;
	}

	public void setId_emp(int id_emp) {
		this.id_emp = id_emp;
	}

	public String getRazSoc() {
		return razSoc;
	}

	public void setRazSoc(String razSoc) {
		this.razSoc = razSoc;
	}
    
    
}
