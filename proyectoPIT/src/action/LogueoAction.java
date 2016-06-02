package action;

import java.io.IOException;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import model.Estado;
import model.Prioridad;
import service.EstadoService;
import service.PrioridadService;

public class LogueoAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String usu;
	private String cla;
	private String nom;
	public List<Estado> estados;
	public List<Prioridad> prioridades;
	
	
	public void	cargarCombosEstadosPrioridad() throws IOException{
		estados = new EstadoService().read();
		prioridades = new PrioridadService().read();
	}
	
	
	public String loguear() throws IOException{
		
		if (usu.equals("admin")&&cla.equals("1234")){

			nom = " Prof :)";
			
			cargarCombosEstadosPrioridad();

			return "ok";
			}
		//Método para mostrar errores
		if(getUsu().equals("") && cla.equals("")){
			addActionError("Capos vacíos");
		}
		if (getUsu()!="admin" && cla!="1234"){
		addActionError("Usuario o clave Incorrectos");
		}
		return "error";
	}
	
	public String getUsu() {
		return usu;
	}
	public void setUsu(String usu) {
		this.usu = usu;
	}
	public String getCla() {
		return cla;
	}
	public void setCla(String cla) {
		this.cla = cla;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	
	
}
