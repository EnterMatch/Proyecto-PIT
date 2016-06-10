package action;

import java.util.ArrayList;
import java.util.List;

import model.Grupo;
import model.Rol;
import model.TipoUsuario;
import service.GrupoService;
import service.RolService;

public class RegistroUsuarioAction {
	//Atributos privados
	private List<Rol> lstRoles;
	private List<Grupo> lstGrupos;
	private List<TipoUsuario> lstTipoUsuarios = new ArrayList<TipoUsuario>();

	//Instanciar el servicio
	RolService rolService = new RolService();
	GrupoService grupoService = new GrupoService();
	
	//Para llenar los selects en el jsp Registrar Usuario
	public String cargarSelects(){
		lstRoles = rolService.read();
		lstGrupos = grupoService.read();
		lstTipoUsuarios.add(new TipoUsuario(1, "Empleado"));
		lstTipoUsuarios.add(new TipoUsuario(2, "Operador"));
		return "cargarSelects";
	}

	//Getters y Setters para habilitar acceso desde el jsp
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
	
	
}
