package mybatis.mapper;

import java.util.List;
import beans.Grupo;

public interface GrupoMapper {

	int registrar(Grupo reg);
	int actualizar(Grupo reg);
	int eliminar(int id);
	List<Grupo> getGrupos();
	
}
