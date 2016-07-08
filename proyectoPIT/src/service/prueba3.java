package service;

import model.Empleado;
import model.Incidencia;
import model.Rol;

public class prueba3 {

	public static void main(String[] args) {
		/*
		RolService rs = new RolService();
		IncidenciaService is = new IncidenciaService();
		
		for (Rol r : rs.read()) {
			System.out.println(r);
		}
		
		System.out.println(new IncidenciaService().read().size()+1);
		*/
		EmpleadoService es = new EmpleadoService();
		Empleado emp = new Empleado();
		emp.setIdGrupo(2);
		
		System.out.println("Tecnico de Campo");
		for (Empleado e : es.readEmpleadoIn(emp)) {
			if(e.getIdRol()==2){
			System.out.println(e.getIdEmpleado()+" "+e.getApePatPersona()+" "+e.getApeMatPersona()+" "+e.getNombrePersona()+""
					+ " "+e.getNumIncidencias()+" "+e.getAlta()+" "+e.getMedia()+" "+e.getBaja());
			}
		}
		System.out.println("Especialista");
		for (Empleado e : es.readEmpleadoIn(emp)) {
			if(e.getIdRol()==3){
			System.out.println(e.getIdEmpleado()+" "+e.getApePatPersona()+" "+e.getApeMatPersona()+" "+e.getNombrePersona()+""
					+ " "+e.getNumIncidencias()+" "+e.getAlta()+" "+e.getMedia()+" "+e.getBaja());
			}
		}
		
	}

}
