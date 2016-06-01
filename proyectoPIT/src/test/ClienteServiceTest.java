package test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import model.Cliente;
import service.ClienteService;

public class ClienteServiceTest{

	ClienteService clienteService = new ClienteService();
	@Before
	public void setUp() throws Exception {
		
	}

	@Test
	public void crudTest() {
		Cliente cliente = new Cliente(0, "Nombre", "Email");
		assertEquals(1, clienteService.create(cliente));
		assertEquals(1, clienteService.update(cliente));
		assertNotNull(clienteService.read());
		assertNotNull(clienteService.obtain(cliente.getIdCliente()));
		assertEquals(1, clienteService.delete(cliente.getIdCliente()));
	}

	

	
}
