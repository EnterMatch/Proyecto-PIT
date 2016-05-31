package model;

public class EmpresaCliente {
	private int idEmpresa;
	private int idCliente;
	
	public int getIdEmpresa() {
		return idEmpresa;
	}
	public void setIdEmpresa(int idEmpresa) {
		this.idEmpresa = idEmpresa;
	}
	public int getIdCliente() {
		return idCliente;
	}
	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}
	
	public EmpresaCliente() {}
	
	public EmpresaCliente(int idEmpresa, int idCliente) {
		super();
		this.idEmpresa = idEmpresa;
		this.idCliente = idCliente;
	}
	@Override
	public String toString() {
		return "EmpresaCliente [idEmpresa=" + idEmpresa + ", idCliente=" + idCliente + "]";
	}
	
	
}
