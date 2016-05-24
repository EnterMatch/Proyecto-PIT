package service;

import java.io.IOException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.Estado;
import model.Prioridad;
import mybatis.MyBatisUtil;
import mybatis.mapper.EstadoPrioridadMapper;

public class EstadoPrioridadServices {

	public static void main(String[] args) throws IOException {
		
		EstadoPrioridadServices testService=new EstadoPrioridadServices();
			List<Estado> lista1 = testService.estados();
			for (Estado e:lista1){
				System.out.println(e.getDescrip_est());
			}
			
			List<Prioridad> lista2 = testService.prioridades();
			for (Prioridad p:lista2){
				System.out.println(p.getDescrip_pri());
			}
	}
	
	public static  List<Estado> estados()  {	
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession(); 
		EstadoPrioridadMapper epm = session.getMapper(EstadoPrioridadMapper.class);
		List<Estado> estados = epm.getEstados();
		session.close();
		return estados; 
	}
	
	public static  List<Prioridad> prioridades()  {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession(); 
		EstadoPrioridadMapper epm = session.getMapper(EstadoPrioridadMapper.class);
		List<Prioridad> prioridades = epm.getPrioridades();
		session.close();
		return prioridades;
	}
	
}
