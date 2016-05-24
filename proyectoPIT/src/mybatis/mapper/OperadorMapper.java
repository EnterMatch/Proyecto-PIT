package mybatis.mapper;

import java.util.List;
import beans.Operador;

public interface OperadorMapper {
	
	int registrar(Operador reg);
	int actualizar(Operador reg);
	int eliminar(int id);
	List<Operador> getOperadores();
	
}
