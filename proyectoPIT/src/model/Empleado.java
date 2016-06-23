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
	
	public Empleado(Persona persona, int idRol, int idGrupo) {
		super(persona.idPersona, persona.nombrePersona, persona.apePatPersona, persona.apeMatPersona, persona.emailPersona);
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
