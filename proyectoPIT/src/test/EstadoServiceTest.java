package test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import service.EstadoService;

public class EstadoServiceTest {
	EstadoService estadoService = new EstadoService();
	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void test() {
		assertNotNull(estadoService.read());
	}

}
