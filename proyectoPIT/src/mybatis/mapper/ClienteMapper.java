package mybatis.mapper;

import java.util.List;
import model.Cliente;

public interface ClienteMapper {

	int registrar(Cliente reg);
	int eliminar(int id);
	List<Cliente> getClientes();
	
}
