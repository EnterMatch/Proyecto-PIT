package model;

public class Empleado extends Persona{
	
	private int idEmpleado;
	private int idRol;
	private int idGrupo;
	private int numIncidencias;
	private String Alta;
	private String Media;
	private String Baja;
	
	public Empleado(){}
	
	public Empleado(Persona persona,int idRol, int idGrupo) {
		super(persona.idPersona, persona.nombrePersona, persona.apePatPersona, persona.apeMatPersona, persona.emailPersona);
		this.idRol = idRol;
		this.idGrupo = idGrupo;
	}
	
	public Empleado(Persona persona,int idEmpleado,  int idRol, int idGrupo, int numIncidencias, String Alta, String Media, String Baja) {
		super(persona.idPersona, persona.nombrePersona, persona.apePatPersona, persona.apeMatPersona, persona.emailPersona);
		this.Alta = Alta;
		this.Media = Media;
		this.Baja = Baja;
		this.numIncidencias = numIncidencias;
		this.idEmpleado = idEmpleado;
		this.idRol = idRol;
		this.idGrupo = idGrupo;
	}
	@Override
	public String toString() {
		return "Empleado [getIdPersona()=" + getIdPersona()  + ", getNombrePersona()=" + getNombrePersona()
				+ ", getApePatPersona()=" + getApePatPersona() + ", getApeMatPersona()=" + getApeMatPersona()
				+ ", getEmailPersona()=" + getEmailPersona() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + ", idEmpleado="+idEmpleado+","
						+ " idRol=" + idRol + ", idGrupo=" + idGrupo + ", numIncidencias=" + numIncidencias + ","
								+ " Alta=" + Alta + ", Media=" + Media + ", Baja=" + Baja + "]";
	}
	
	
	
	public String getAlta() {
		return Alta;
	}

	public void setAlta(String alta) {
		Alta = alta;
	}

	public String getMedia() {
		return Media;
	}

	public void setMedia(String media) {
		Media = media;
	}

	public String getBaja() {
		return Baja;
	}

	public void setBaja(String baja) {
		Baja = baja;
	}

	public int getNumIncidencias() {
		return numIncidencias;
	}

	public void setNumIncidencias(int numIncidencias) {
		this.numIncidencias = numIncidencias;
	}

	public int getIdEmpleado() {
		return idEmpleado;
	}

	public void setIdEmpleado(int idEmpleado) {
		this.idEmpleado = idEmpleado;
	}

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
	
}
