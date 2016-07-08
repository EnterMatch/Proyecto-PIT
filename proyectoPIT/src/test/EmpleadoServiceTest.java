package test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import org.junit.Before;
import org.junit.Test;

import model.Empleado;
import model.Persona;
import service.EmpleadoService;

public class EmpleadoServiceTest {

	EmpleadoService empleadoService = new EmpleadoService();
	@Before
	public void setUp() throws Exception {
		
	}

	@Test
	public void crudTest() {
		/*
		Empleado empleado = new Empleado(new Persona(0, "Nombre", "ApePat", "ApeMat", "email@gmail.com"), 1, 1);
		assertEquals(1, empleadoService.create(empleado));
		assertEquals(1, empleadoService.update(empleado));
		assertNotNull(empleadoService.read());
		assertNotNull(empleadoService.obtain(empleado.getIdPersona()));
		assertEquals(1, empleadoService.delete(empleado.getIdPersona()));
		*/
	}

}
