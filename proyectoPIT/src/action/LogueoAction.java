package action;

import java.io.IOException;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import model.Estado;
import model.Prioridad;
import service.EstadoPrioridadServices;

public class LogueoAction extends ActionSupport{
	private String usu;
	private String cla;
	private String nom;
	public List<Estado> estados;
	public List<Prioridad> prioridades;
	
	
	public void	cargarCombosEstadosPrioridad() throws IOException{
		estados = EstadoPrioridadServices.estados();
		prioridades = EstadoPrioridadServices.prioridades();
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
