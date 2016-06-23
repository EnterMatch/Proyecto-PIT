package model;

public class Operador extends Persona{
	
	public Operador() {}

	public Operador(Persona persona) {
		super(persona.idPersona, persona.nombrePersona, persona.apePatPersona, persona.apeMatPersona, persona.emailPersona);
	}

	@Override
	public String toString() {
		return "Operador [getIdPersona()=" + getIdPersona() + ", getNombrePersona()=" + getNombrePersona()
				+ ", getApePatPersona()=" + getApePatPersona() + ", getApeMatPersona()=" + getApeMatPersona()
				+ ", getEmailPersona()=" + getEmailPersona() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	
}
