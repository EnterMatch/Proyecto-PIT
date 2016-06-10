package action;

import java.io.IOException;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import model.Cliente;
import model.Empresa;
import model.Estado;
import model.Grupo;
import model.Incidencia;
import model.Prioridad;
import model.Usuario;
import service.ClienteService;
import service.EmpresaService;
import service.EstadoService;
import service.GrupoService;
import service.IncidenciaService;
import service.PrioridadService;
import service.UsuarioService;

public class LogueoAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Usuario usuario;
	
	
	private int idIncidencia;
	private String descripIncidencia;
	private String fecIngIncidencia;
	private String resumenIncidencia;
	private String solucionIncidencia;
	private int idCliente;
	private int idGrupo;
	private int idOperador;
	private int idEmpleado;
	private int idEstado;
	private int idPrioridad;
	
	
	
	public List<Empresa> 	empresas;
	public List<Cliente> 	clientes;
	public List<Grupo> 		grupos;
	public List<Estado> 	estados;
	public List<Prioridad> prioridades;
	
	private	List<Incidencia> lstIncidente;
	
	public void	cargarCombosEstadosPrioridad(){
		estados 		= new EstadoService().read();
		prioridades 	= new PrioridadService().read();
		empresas		= new EmpresaService().read();
		clientes		= new ClienteService().read();
		grupos			= new GrupoService().read();
	}
	
	public void	cargarListaIncidencias(){
		
		for(Incidencia i: new IncidenciaService().read()){
			if(i.getIdEstado()==1){
				lstIncidente = new IncidenciaService().read();
			}
		}
	}
	
	public String listarIncidentes() throws IOException {
		lstIncidente = new IncidenciaService().read();
		return "ok";
	}
	
	public List<Incidencia> getLstIncidente() {
		return lstIncidente;
	}

	public void setLstIncidente(List<Incidencia> lstIncidente) {
		this.lstIncidente = lstIncidente;
	}
	
	
	
	public String loguear(){
		if(getUsuario().getNombreUsuario().equals("") || getUsuario().getClaveUsuario().equals("")){
			addActionError("Campos vacíos");
			return "error";
		}else if (new UsuarioService().buscarPorNombreYClave(usuario) == null){
			addActionError("Datos incorrectos");
			return "error";
		}else{
			
			//getUsuario();
			
			
			
			cargarCombosEstadosPrioridad();
			lstIncidente = new IncidenciaService().read();
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

	public int getIdIncidencia() {
		return idIncidencia;
	}

	public void setIdIncidencia(int idIncidencia) {
		this.idIncidencia = idIncidencia;
	}

	public String getDescripIncidencia() {
		return descripIncidencia;
	}

	public void setDescripIncidencia(String descripIncidencia) {
		this.descripIncidencia = descripIncidencia;
	}

	public String getFecIngIncidencia() {
		return fecIngIncidencia;
	}

	public void setFecIngIncidencia(String fecIngIncidencia) {
		this.fecIngIncidencia = fecIngIncidencia;
	}

	public String getResumenIncidencia() {
		return resumenIncidencia;
	}

	public void setResumenIncidencia(String resumenIncidencia) {
		this.resumenIncidencia = resumenIncidencia;
	}

	public String getSolucionIncidencia() {
		return solucionIncidencia;
	}

	public void setSolucionIncidencia(String solucionIncidencia) {
		this.solucionIncidencia = solucionIncidencia;
	}

	public int getIdCliente() {
		return idCliente;
	}

	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}

	public int getIdGrupo() {
		return idGrupo;
	}

	public void setIdGrupo(int idGrupo) {
		this.idGrupo = idGrupo;
	}

	public int getIdOperador() {
		return idOperador;
	}

	public void setIdOperador(int idOperador) {
		this.idOperador = idOperador;
	}

	public int getIdEmpleado() {
		return idEmpleado;
	}

	public void setIdEmpleado(int idEmpleado) {
		this.idEmpleado = idEmpleado;
	}

	public int getIdEstado() {
		return idEstado;
	}

	public void setIdEstado(int idEstado) {
		this.idEstado = idEstado;
	}

	public int getIdPrioridad() {
		return idPrioridad;
	}

	public void setIdPrioridad(int idPrioridad) {
		this.idPrioridad = idPrioridad;
	}

	public List<Empresa> getEmpresas() {
		return empresas;
	}

	public void setEmpresas(List<Empresa> empresas) {
		this.empresas = empresas;
	}

	public List<Cliente> getClientes() {
		return clientes;
	}

	public void setClientes(List<Cliente> clientes) {
		this.clientes = clientes;
	}

	public List<Grupo> getGrupos() {
		return grupos;
	}

	public void setGrupos(List<Grupo> grupos) {
		this.grupos = grupos;
	}

	public List<Estado> getEstados() {
		return estados;
	}

	public void setEstados(List<Estado> estados) {
		this.estados = estados;
	}

	public List<Prioridad> getPrioridades() {
		return prioridades;
	}

	public void setPrioridades(List<Prioridad> prioridades) {
		this.prioridades = prioridades;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
