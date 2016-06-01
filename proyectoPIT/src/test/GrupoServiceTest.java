package test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import model.Grupo;
import service.GrupoService;

public class GrupoServiceTest {
	GrupoService grupoService = new GrupoService();
	int result = 0;
	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void test() {
		Grupo grupo = new Grupo(0, "lol");
		assertEquals(1, grupoService.create(grupo));
		assertEquals(1, grupoService.update(grupo));
		assertNotNull(grupoService.read());
		assertNotNull(grupoService.obtain(grupo.getIdGrupo()));
	}

}
