package service;

import java.util.List;
import mybatis.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import model.Cliente;

public class ClienteService {
	public int registrar(Cliente reg){
		int ok = 0;
		
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			ok = session.insert("ClienteMapper.registrar", reg);
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
			ok = session.delete("ClienteMapper.eliminar", id);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return ok;
	}
	
	public List<Cliente> listadoClientes(){
		List<Cliente> lista = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			lista = session.selectList("ClienteMapper.getClientes");
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return lista;
	}
}
