package mybatis.mapper;

import java.util.List;

import model.Estado;
import model.Prioridad;

public interface EstadoPrioridadMapper {

	List<Estado> getEstados();
	
	
	List<Prioridad> getPrioridades();
	
}
