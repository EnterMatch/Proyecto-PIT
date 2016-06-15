package action;

import java.util.ArrayList;
import java.util.List;

import model.Empleado;
import model.Grupo;
import model.Persona;
import model.Rol;
import model.TipoUsuario;
import model.Usuario;
import service.GrupoService;
import service.RolService;

public class RegistroUsuarioAction {
	// Atributos privados
	// Listas para llenar selects
	private List<Rol> lstRoles;
	private List<Grupo> lstGrupos;
	private List<TipoUsuario> lstTipoUsuarios = new ArrayList<TipoUsuario>();
	// Atributo para capturar el tipo de usuario
	private String tipoUsuario;
	// Atributos de Models
	private Persona persona;
	private Empleado empleado;
	private Usuario usuario;
	
	// Instanciar el servicio
	RolService rolService = new RolService();
	GrupoService grupoService = new GrupoService();

	// Carga el jsp Registrar Usuario
	public String cargarData() {
		cargarSelects();
		return "cargarSelects";
	}

	// Registra un usuario nuevo en la BD
	public String registrarUsuario() {
		cargarSelects();
		System.out.println(tipoUsuario);
		System.out.println(persona.toString());
		System.out.println(empleado.toString());
		System.out.println(usuario.toString());
		return "registrarUsuario";
	}

	// Método para cargar selects en jsp
	private void cargarSelects() {
		lstRoles = rolService.read();
		lstGrupos = grupoService.read();
		lstTipoUsuarios.add(new TipoUsuario(1, "Empleado"));
		lstTipoUsuarios.add(new TipoUsuario(2, "Operador"));
	}

	// Getters y Setters para manejo de data desde y hacia el jsp
	public List<Rol> getLstRoles() {
		return lstRoles;
	}
	public void setLstRoles(List<Rol> lstRoles) {
		this.lstRoles = lstRoles;
	}
	public List<Grupo> getLstGrupos() {
		return lstGrupos;
	}
	public void setLstGrupos(List<Grupo> lstGrupos) {
		this.lstGrupos = lstGrupos;
	}
	public List<TipoUsuario> getLstTipoUsuarios() {
		return lstTipoUsuarios;
	}
	public void setLstTipoUsuarios(List<TipoUsuario> lstTipoUsuarios) {
		this.lstTipoUsuarios = lstTipoUsuarios;
	}
	public String getTipoUsuario() {
		return tipoUsuario;
	}
	public void setTipoUsuario(String tipoUsuario) {
		this.tipoUsuario = tipoUsuario;
	}
	public Persona getPersona() {
		return persona;
	}
	public void setPersona(Persona persona) {
		this.persona = persona;
	}
	public Empleado getEmpleado() {
		return empleado;
	}
	public void setEmpleado(Empleado empleado) {
		this.empleado = empleado;
	}
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
}
