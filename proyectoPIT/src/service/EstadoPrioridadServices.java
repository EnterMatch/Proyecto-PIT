package service;

import java.io.IOException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.Estado;
import model.Prioridad;
import mybatis.MyBatisUtil;

public class EstadoPrioridadServices {
	
	public static  List<Estado> estados()  {	
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession(); 
		List<Estado> estados = session.selectList("EstadoPrioridadMapper.getEstados");
		session.close();
		return estados; 
	}
	
	public static  List<Prioridad> prioridades()  {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession(); 
		List<Prioridad> prioridades = session.selectList("EstadoPrioridadMapper.getPrioridades");
		session.close();
		return prioridades;
	}
	
}
