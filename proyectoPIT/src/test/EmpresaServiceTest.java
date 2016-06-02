package test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import service.EmpresaService;

public class EmpresaServiceTest {
	
	EmpresaService empresaService = new EmpresaService();
	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void test() {
		assertNotNull(empresaService.read());
		assertNotNull(empresaService.obtain(1));
	}

}
