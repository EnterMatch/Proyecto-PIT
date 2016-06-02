package test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import model.Operador;
import service.OperadorService;

public class OperadorServiceTest {
	OperadorService operadorService = new OperadorService();
	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void test() {
		Operador operador = new Operador(0, "Nombre", "ApePat", "ApeMat", "Email");
		assertEquals(1, operadorService.create(operador));;
		assertEquals(1, operadorService.update(operador));;
		assertNotNull(operadorService.read());
		assertNotNull(operadorService.obtain(operador.getIdPersona()));
		assertEquals(1, operadorService.delete(operador.getIdPersona()));
	}

}
