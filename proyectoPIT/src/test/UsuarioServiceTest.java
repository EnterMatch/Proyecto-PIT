package test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import model.Usuario;
import service.UsuarioService;

public class UsuarioServiceTest {
	
	UsuarioService usuarioService = new UsuarioService();
	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void test() {
		assertEquals(1, usuarioService.create(new Usuario(1, "Nombre", "Clave")));
		assertEquals(1, usuarioService.update(new Usuario(1, "Nombre", "Clave")));
		assertNotNull(usuarioService.read());
		assertNotNull(usuarioService.obtain(1));
		assertEquals(1, usuarioService.delete(1));
	}

}
