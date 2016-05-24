package mybatis.mapper;

import java.util.List;

import model.Usuario;


public interface UsuarioMapper {

	public interface ProductoMapper{
		List<Usuario> getProductos();
		int registrar(Usuario reg);
		int actualizar(Usuario reg);
		int eliminar(int id);	
	}

}
