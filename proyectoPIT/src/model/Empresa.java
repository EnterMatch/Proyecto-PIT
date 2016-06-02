package model;

public class Empresa {
	
	private int idEmpresa;
	private String razSocEmpresa;
	
	public int getIdEmpresa() {
		return idEmpresa;
	}
	public void setIdEmpresa(int idEmpresa) {
		this.idEmpresa = idEmpresa;
	}
	public String getRazSocEmpresa() {
		return razSocEmpresa;
	}
	public void setRazSocEmpresa(String razSocEmpresa) {
		this.razSocEmpresa = razSocEmpresa;
	}
	
	public Empresa() {}
	
	public Empresa(int idEmpresa, String razSocEmpresa) {
		super();
		this.idEmpresa = idEmpresa;
		this.razSocEmpresa = razSocEmpresa;
	}
	@Override
	public String toString() {
		return "Empresa [idEmpresa=" + idEmpresa + ", razSocEmpresa=" + razSocEmpresa + "]";
	}
	
}
