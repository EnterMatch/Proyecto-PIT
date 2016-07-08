package service;

import model.Incidencia;
import model.Operador;

public class prueba2 {

	public static void main(String[] args) {
		/*
		OperadorService os = new  OperadorService();
		for (Operador o : os.read()) {
			System.out.println(o);
		}
		*/
		
		/*
		
		IncidenciaService is = new IncidenciaService();
		
		for(Incidencia i :is.read_Empleado(13)){
			System.out.println(i);
		}
		*/
		
		IncidenciaService is = new IncidenciaService();
		Incidencia incidencia = new Incidencia(8, 17, "", "", "");
		
		is.update(incidencia);
		
	}

}
