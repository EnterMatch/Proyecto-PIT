package test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import org.junit.Before;
import org.junit.Test;

import model.Empleado;
import service.EmpleadoService;

public class EmpleadoServiceTest {

	EmpleadoService empleadoService = new EmpleadoService();
	int result = 0;
	@Before
	public void setUp() throws Exception {
		
	}

	@Test
	public void crudTest() {
		Empleado empleado = new Empleado(0, "Nombre", "ApePat", "ApeMat", "email@gmail.com", 1, 1);
		result = empleadoService.create(empleado);
		assertEquals(1, result);
		result = empleadoService.update(new Empleado(empleado.getIdPersona(), "Nombre", "ApePat", "ApeMat", "email@gmail.com", 1, 1));
		assertEquals(1, result);
		assertNotNull(empleadoService.read());
		assertNotNull(empleadoService.obtain(empleado.getIdPersona()));
		result = empleadoService.delete(empleado.getIdPersona());
		assertEquals(1, result);
	}

}
