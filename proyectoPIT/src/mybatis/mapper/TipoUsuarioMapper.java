package mybatis.mapper;

import java.util.List;

import beans.Tipo_Usuario;



public interface TipoUsuarioMapper {
	
	List<Tipo_Usuario> getProductos();
	int registrar(Tipo_Usuario reg);
	int actualizar(Tipo_Usuario reg);
	int eliminar(int id);

}
