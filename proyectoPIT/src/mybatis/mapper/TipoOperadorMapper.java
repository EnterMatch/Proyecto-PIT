package mybatis.mapper;

import java.util.List;

import model.Tipo_Operador;



public interface TipoOperadorMapper {
	
	List<Tipo_Operador> getProductos();
	int registrar(Tipo_Operador reg);
	int actualizar(Tipo_Operador reg);
	int eliminar(int id);

}
