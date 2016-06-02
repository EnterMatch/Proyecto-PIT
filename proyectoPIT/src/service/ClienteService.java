package service;

import java.util.List;
import mybatis.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import model.Cliente;

public class ClienteService implements IService<Cliente>{
	
	@Override
	public int create(Cliente cliente){
		int result = 0;
		
		SqlSession session = getSqlSession();
		try{
			result = session.insert("ClienteMapper.create", cliente);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return result;
	}
	
	@Override
	public List<Cliente> read(){
		List<Cliente> clientes = null;
		SqlSession session = getSqlSession();
		try{
			clientes = session.selectList("ClienteMapper.read");
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return clientes;
	}

	@Override
	public int update(Cliente cliente) {
		int result = 0;
		SqlSession session = getSqlSession();
		try{
			result = session.update("ClienteMapper.update",cliente);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return result;
	}
	
	@Override
	public int delete(int idCliente) {
		int result = 0;
		SqlSession session = getSqlSession();
		try{
			result = session.delete("ClienteMapper.delete", idCliente);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return result;
	}

	@Override
	public Cliente obtain(int idCliente) {
		Cliente cliente = null;
		SqlSession session = getSqlSession();
		try{
			cliente = session.selectOne("ClienteMapper.obtain", idCliente);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return cliente;
	}
	
	private SqlSession getSqlSession() {
		return MyBatisUtil.getSqlSessionFactory().openSession();
	}
}
