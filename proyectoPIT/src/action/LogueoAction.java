package action;

import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import model.Usuario;
import service.UsuarioService;

public class LogueoAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Usuario usuario;
	Map<String, Object> session;
	
	public String loguear(){
		if(getUsuario().getNombreUsuario().equals("") || getUsuario().getClaveUsuario().equals("")){
			addActionError("Campos vacíos");
			return "error";
		}else if (new UsuarioService().buscarPorNombreYClave(usuario) == null){
			addActionError("Datos incorrectos");
			return "error";
		}else{
			try {
				session.put("loggedInUser", getUsuario().getNombreUsuario());
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
            
			
			//ServletActionContext.getRequest().getSession().setAttribute("loggedInUser", getUsuario());
			return "ok";
		}
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
}
