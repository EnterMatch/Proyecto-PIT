package service;

import model.Incidencia;
import model.Rol;

public class prueba3 {

	public static void main(String[] args) {

		RolService rs = new RolService();
		IncidenciaService is = new IncidenciaService();
		
		for (Rol r : rs.read()) {
			System.out.println(r);
		}
		
		System.out.println(new IncidenciaService().read().size()+1);
		
	}

}
