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
		result = 0;
	}

	@Test
	public void createTest() {
		result = clienteService.create(new Cliente(0, "Nombre", "Email"));
		assertEquals(1, result);
	}

	@Test
	public void updateTest() {
		List<Cliente> clientes = clienteService.read();
		Cliente cliente = clientes.get(clientes.size()-1);
		result = clienteService.update(new Cliente(cliente.getIdCliente(), "Nombre", "Email"));
		assertEquals(1, result);
	}
	
	@Test
	public void readTest() {
		assertNotNull(clienteService.read());
	}

	@Test
	public void obtainTest() {
		List<Cliente> clientes = clienteService.read();
		Cliente cliente = clientes.get(clientes.size()-1);
		assertNotNull(clienteService.obtain(cliente.getIdCliente()));
	}

	@Test
	public void deleteTest() {
		List<Cliente> clientes = clienteService.read();
		Cliente cliente = clientes.get(clientes.size()-1);
		result = clienteService.delete(cliente.getIdCliente());
	}


	
}
