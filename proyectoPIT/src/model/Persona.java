package model;

public class Persona {
	
	protected int idPersona;
	protected String nombrePersona;
	protected String apePatPersona;
	protected String apeMatPersona;
	protected String emailPersona;
	
	
	public int getIdPersona() {
		return idPersona;
	}
	public void setIdPersona(int idPersona) {
		this.idPersona = idPersona;
	}
	public String getNombrePersona() {
		return nombrePersona;
	}
	public void setNombrePersona(String nombrePersona) {
		this.nombrePersona = nombrePersona;
	}
	public String getApePatPersona() {
		return apePatPersona;
	}
	public void setApePatPersona(String apePatPersona) {
		this.apePatPersona = apePatPersona;
	}
	public String getApeMatPersona() {
		return apeMatPersona;
	}
	public void setApeMatPersona(String apeMatPersona) {
		this.apeMatPersona = apeMatPersona;
	}
	public String getEmailPersona() {
		return emailPersona;
	}
	public void setEmailPersona(String emailPersona) {
		this.emailPersona = emailPersona;
	}
	
	public Persona(){}
	
	public Persona(int idPersona, String nombrePersona, String apePatPersona, String apeMatPersona,
			String emailPersona) {
		super();
		this.idPersona = idPersona;
		this.nombrePersona = nombrePersona;
		this.apePatPersona = apePatPersona;
		this.apeMatPersona = apeMatPersona;
		this.emailPersona = emailPersona;
	}
	@Override
	public String toString() {
		return "Persona [idPersona=" + idPersona + ", nombrePersona=" + nombrePersona + ", apePatPersona="
				+ apePatPersona + ", apeMatPersona=" + apeMatPersona + ", emailPersona=" + emailPersona + "]";
	}
	
	
	
	
}
