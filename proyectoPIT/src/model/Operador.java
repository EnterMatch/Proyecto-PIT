package model;

public class Operador extends Persona{
	
	public Operador() {}

	public Operador(int idPersona, String nombrePersona, String apePatPersona, String apeMatPersona,
			String emailPersona) {
		super(idPersona, nombrePersona, apePatPersona, apeMatPersona, emailPersona);
	}

	@Override
	public String toString() {
		return "Operador [getIdPersona()=" + getIdPersona() + ", getNombrePersona()=" + getNombrePersona()
				+ ", getApePatPersona()=" + getApePatPersona() + ", getApeMatPersona()=" + getApeMatPersona()
				+ ", getEmailPersona()=" + getEmailPersona() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	
}
