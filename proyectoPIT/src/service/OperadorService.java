package service;

import java.util.List;
import mybatis.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import model.Cliente;
import model.Operador;

public class OperadorService implements IService<Operador>{

	@Override
	public int create(Operador operador){
		int result = 0;
		
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			result = session.insert("OperadorMapper.create", operador);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return result;
	}
	
	@Override
	public List<Operador> read(){
		List<Operador> operador = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			operador = session.selectList("OperadorMapper.read");
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return operador;
	}
	
	@Override
	public int update(Operador operador) {
		int result = 0;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			result = session.update("OperadorMapper.update",operador);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return result;
	}
	
	@Override
	public int delete(int idOperador) {
		int result = 0;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			result = session.delete("OperadorMapper.delete", idOperador);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return result;
	}

	@Override
	public Operador obtain(int idOperador) {
		Operador operador = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			operador = session.selectOne("OperadorMapper.obtain", idOperador);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return operador;
	}
}
