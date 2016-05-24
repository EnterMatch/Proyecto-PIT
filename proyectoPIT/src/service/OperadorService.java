package service;

import java.util.List;

import mybatis.MyBatisUtil;
import mybatis.mapper.OperadorMapper;

import org.apache.ibatis.session.SqlSession;

import beans.Operador;

public class OperadorService {

	public int registrar(Operador reg){
		int ok = 0;
		
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			OperadorMapper operadorMapper = session.getMapper(OperadorMapper.class);
			ok = operadorMapper.registrar(reg);
			//System.out.println(ok);
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}
	
	public int actualizar(Operador reg){
		int ok = 0;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			OperadorMapper operadorMapper = session.getMapper(OperadorMapper.class);
			ok = operadorMapper.actualizar(reg);
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}
	
	public int eliminar(int id){
		int ok = 0;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			OperadorMapper operadorMapper = session.getMapper(OperadorMapper.class);
			ok = operadorMapper.eliminar(id);
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}
	
	public List<Operador> listadoOperadores(){
		List<Operador> lista = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			OperadorMapper operadorMapper = session.getMapper(OperadorMapper.class);
			lista = operadorMapper.getOperadores();
		}catch(Exception e){
			e.printStackTrace();
		}
		return lista;
	}
}
