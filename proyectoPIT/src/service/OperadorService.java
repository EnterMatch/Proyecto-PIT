package service;

import java.util.List;
import mybatis.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import model.Operador;

public class OperadorService {

	public int registrar(Operador reg){
		int ok = 0;
		
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			ok = session.insert("OperadorMapper.registrar",reg);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return ok;
	}
	
	public int actualizar(Operador reg){
		int ok = 0;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			ok = session.update("OperadorMapper.actualizar",reg);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return ok;
	}
	
	public int eliminar(int id){
		int ok = 0;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			ok = session.delete("OperadorMapper.eliminar", id);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return ok;
	}
	
	public List<Operador> listadoOperadores(){
		List<Operador> lista = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			lista = session.selectList("OperadorMapper.getOperadores");
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return lista;
	}
}
