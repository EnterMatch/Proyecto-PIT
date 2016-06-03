package action;

import java.io.IOException;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import model.Estado;
import model.Prioridad;
import model.Usuario;
import service.EstadoService;
import service.PrioridadService;
import service.UsuarioService;

public class LogueoAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Usuario usuario;
	public List<Estado> estados;
	public List<Prioridad> prioridades;
	
	
	public void	cargarCombosEstadosPrioridad(){
		estados = new EstadoService().read();
		prioridades = new PrioridadService().read();
	}
	
	
	public String loguear(){
		if(getUsuario().getNombreUsuario().equals("") || getUsuario().getClaveUsuario().equals("")){
			addActionError("Campos vacíos");
			return "error";
		}else if (new UsuarioService().buscarPorNombreYClave(usuario) == null){
			addActionError("Datos incorrectos");
			return "error";
		}else{
			cargarCombosEstadosPrioridad();
			return "ok";
		}
	}
	
	public String cargarCombos(){
		cargarCombosEstadosPrioridad();
		return "ok";
	}


	public Usuario getUsuario() {
		return usuario;
	}


	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	
	
	
	
}
