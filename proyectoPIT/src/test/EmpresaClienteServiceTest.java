package test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import model.EmpresaCliente;
import service.EmpresaClienteService;

public class EmpresaClienteServiceTest {
	EmpresaClienteService empresaClienteService = new EmpresaClienteService();
	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void CrudTest() {
		assertNotNull(empresaClienteService.read());
		assertNotNull(empresaClienteService.obtain(new EmpresaCliente(1,1)));
	}

}
