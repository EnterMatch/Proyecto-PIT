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
		Usuario usuario = new Usuario(16, "Nombre", "Clave");
		assertEquals(1, usuarioService.create(usuario));
		assertEquals(1, usuarioService.update(usuario));
		assertNotNull(usuarioService.read());
		assertNotNull(usuarioService.obtain(16));
		assertEquals(1, usuarioService.delete(16));
	}

}
