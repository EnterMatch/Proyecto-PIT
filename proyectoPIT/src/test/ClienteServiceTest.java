package test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;

import model.Cliente;
import service.ClienteService;

public class ClienteServiceTest{

	ClienteService clienteService = new ClienteService();
	int result = 0;
	@Before
	public void setUp() throws Exception {
		
	}

	@Test
	public void crudTest() {
		Cliente cliente = new Cliente(0, "Nombre", "Email");
		result = clienteService.create(cliente);
		assertEquals(1, result);
		result = clienteService.update(new Cliente(cliente.getIdCliente(), "Nombre", "Email"));
		assertEquals(1, result);
		assertNotNull(clienteService.read());
		assertNotNull(clienteService.obtain(cliente.getIdCliente()));
		result = clienteService.delete(cliente.getIdCliente());
		assertEquals(1, result);
	}

	

	
}
