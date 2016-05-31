package model;

public class Empleado extends Persona{
	
	private int idRol;
	private int idGrupo;
	
	public int getIdRol() {
		return idRol;
	}
	public void setIdRol(int idRol) {
		this.idRol = idRol;
	}
	public int getIdGrupo() {
		return idGrupo;
	}
	public void setIdGrupo(int idGrupo) {
		this.idGrupo = idGrupo;
	}
	
	public Empleado(){}
	
	public Empleado(int idPersona, String nombrePersona, String apePatPersona, String apeMatPersona,
			String emailPersona, int idRol, int idGrupo) {
		super(idPersona, nombrePersona, apePatPersona, apeMatPersona, emailPersona);
		this.idRol = idRol;
		this.idGrupo = idGrupo;
	}
	@Override
	public String toString() {
		return "Empleado [getIdPersona()=" + getIdPersona() + ", getNombrePersona()=" + getNombrePersona()
				+ ", getApePatPersona()=" + getApePatPersona() + ", getApeMatPersona()=" + getApeMatPersona()
				+ ", getEmailPersona()=" + getEmailPersona() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + ", idRol=" + idRol + ", idGrupo=" + idGrupo + "]";
	}
	
	
}
