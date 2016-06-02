package test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import service.PrioridadService;

public class PrioridadServiceTest {
	PrioridadService prioridadService = new PrioridadService();
	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void test() {
		assertNotNull(prioridadService.read());
	}

}
