package test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import model.Incidencia;
import service.IncidenciaService;

public class IncidenciaServiceTest {
	IncidenciaService incidenciaService = new IncidenciaService();
	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void test() {
		Incidencia incidencia = new Incidencia(0, null, null, null, null, 0, 0, 0, 0, 0, 0);
		assertEquals(1, incidenciaService.create(incidencia));
		assertEquals(1, incidenciaService.update(incidencia));
		assertNotNull(incidenciaService.read());
		assertNotNull(incidenciaService.obtain(incidencia.getIdIncidencia()));
		assertEquals(1, incidenciaService.delete(incidencia.getIdIncidencia()));
	}

}
