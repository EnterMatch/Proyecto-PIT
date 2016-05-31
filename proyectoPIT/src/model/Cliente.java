package model;

public class Cliente {
	private int idCliente;
	private String nombreCliente;
	private String emailCliente;
	
	public int getIdCliente() {
		return idCliente;
	}
	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}
	public String getNombreCliente() {
		return nombreCliente;
	}
	public void setNombreCliente(String nombreCliente) {
		this.nombreCliente = nombreCliente;
	}
	public String getEmailCliente() {
		return emailCliente;
	}
	public void setEmailCliente(String emailCliente) {
		this.emailCliente = emailCliente;
	}
	
	
	
	public Cliente() {
		super();
	}
	public Cliente(int idCliente, String nombreCliente, String emailCliente) {
		super();
		this.idCliente = idCliente;
		this.nombreCliente = nombreCliente;
		this.emailCliente = emailCliente;
	}
	@Override
	public String toString() {
		return "Cliente [idCliente=" + idCliente + ", nombreCliente=" + nombreCliente + ", emailCliente=" + emailCliente
				+ "]";
	}
	
}
