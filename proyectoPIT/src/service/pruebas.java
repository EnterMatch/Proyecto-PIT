package service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

import model.Incidencia;

public class pruebas {

	private static List<Incidencia> lstIncidentesSinAsignar;
	private static List<String> listas;
	private static List<String> listasd;

	public static void main(String[] args) {
		/*
		pruebaService is = new pruebaService();
		prueba i = new prueba(1, "aaaa", "b", "c");
		System.out.println(i);
		is.update(i);
		*/
		IncidenciaService is = new IncidenciaService();
		EmpleadoService empleadoService = new EmpleadoService();
		//RolService rs = new RolService();
		/*
		for (Incidencia r : is.read()) {
			System.out.println(r);
		}
		*/
		
		int idUsuario=4;
		int idGrupo = empleadoService.obtain(idUsuario).getIdGrupo();
		/*
		List<Incidencia> lista = empleadoService.obtain(idUsuario).getIdRol()==1 ? 
				(lista = is.read_Grupo(idGrupo)):
					(lista = is.read_Empleado(idUsuario));
					*/
		
		List<Incidencia> lstIncidentesSinAsignar=null;
		List<Incidencia> lista = is.read_Grupo(2);
		int c=0;
		//Incidencia incidencia = new Incidencia();
		/*
		for (Incidencia incidencia : is.read_Grupo(2)) {
			lstIncidentesSinAsignar.add(incidencia);
		}
		
		for (Incidencia incidencia : lstIncidentesSinAsignar) {
			System.out.println(incidencia);
		}
		*/
		

		List<Incidencia> a = new ArrayList<Incidencia>();
		a = is.read_Grupo(2);
		
		List<Incidencia> b = new ArrayList<Incidencia>(a);

		
		for (Incidencia string : a) {
			if(string.getIdEmpleado()!=0){
				b.remove(string);
			}
		}
		
		
		for (Incidencia incidencia : b) {
			System.out.println(incidencia);
		}
		
	}
	
}
