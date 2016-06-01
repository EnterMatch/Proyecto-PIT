package test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import service.RolService;

public class RolServiceTest {

	RolService rolService = new RolService();
	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void crudTest() {
		assertNotNull(rolService.read());
		assertNotNull(rolService.obtain(1));
	}

}
