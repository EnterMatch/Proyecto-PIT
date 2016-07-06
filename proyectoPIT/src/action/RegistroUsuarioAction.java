package action;

import com.opensymphony.xwork2.ActionSupport;

import model.Empleado;
import model.Operador;
import model.Persona;
import model.Usuario;
import service.EmpleadoService;
import service.GrupoService;
import service.OperadorService;
import service.RolService;
import service.UsuarioService;

public class RegistroUsuarioAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// Atributos privados
	// Listas para llenar selects
	// Atributo para capturar el tipo de usuario
	private String tipoUsuario;
	// Atributos de Models
	private Persona persona;
	private Empleado empleado;
	private Usuario usuario;
	
	// Instanciar los servicios
	RolService rolService = new RolService();
	GrupoService grupoService = new GrupoService();
	EmpleadoService empleadoService = new EmpleadoService();
	OperadorService operadorService = new OperadorService();
	UsuarioService usuarioService = new UsuarioService();

	
	// Método para registrar un usuario de acuerdo a su tipo
	private void registrarPorTipoUsuario(String tipoUsuario) {
		// Validar que todos los campos estén llenos
		if(persona.getNombrePersona().equals("")||persona.getApePatPersona().equals("")||
				persona.getApePatPersona().equals("")||persona.getEmailPersona().equals("")||
				usuario.getNombreUsuario().equals("")||usuario.getClaveUsuario().equals("")){
			addActionError("Falta completar datos");
			return;
		}
		
		// Validar que el usuario ingresado no exista
		for(Usuario usuarioItem : usuarioService.read()){
			if(usuarioItem.getNombreUsuario().equals(usuario.getNombreUsuario())){
				addActionError("El usuario ingresado ya existe");
				return;
			}
		}
		
		int result = 0;
		if(tipoUsuario.equals("1")){
			empleado = new Empleado(persona, empleado.getIdGrupo(), empleado.getIdRol());
			empleadoService.create(empleado);
			result = usuarioService.create(new Usuario(empleado.getIdPersona(), usuario.getNombreUsuario(), usuario.getClaveUsuario()));
			
		}else{
			Operador operador = new Operador(persona);
			operadorService.create(operador);
			result = usuarioService.create(new Usuario(operador.getIdPersona(), usuario.getNombreUsuario(), usuario.getClaveUsuario()));
		}
		if(result!=1){
			addActionError("Error al ingresar el registro");
		}else{
			addActionMessage("Registro Agregado");
		}
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
