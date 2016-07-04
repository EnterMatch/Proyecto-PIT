package model;

public class Operador extends Persona{
	
	private int id_operador;
	private int id_rol;
	
	public Operador() {}

	public Operador(Persona persona) {
		super(persona.idPersona, persona.nombrePersona, persona.apePatPersona, persona.apeMatPersona, persona.emailPersona);
	}

	@Override
	public String toString() {
		return "Operador [id_operador="+id_operador+",id_rol="+id_rol+",getIdPersona()=" + getIdPersona() + ", getNombrePersona()=" + getNombrePersona()
				+ ", getApePatPersona()=" + getApePatPersona() + ", getApeMatPersona()=" + getApeMatPersona()
				+ ", getEmailPersona()=" + getEmailPersona() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}

	public int getId_operador() {
		return id_operador;
	}

	public void setId_operador(int id_operador) {
		this.id_operador = id_operador;
	}

	public int getId_rol() {
		return id_rol;
	}

	public void setId_rol(int id_rol) {
		this.id_rol = id_rol;
	}
	
	
	
	
}
