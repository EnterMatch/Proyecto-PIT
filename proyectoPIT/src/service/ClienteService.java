package service;

import java.util.List;
import mybatis.MyBatisUtil;
import mybatis.mapper.ClienteMapper;
import org.apache.ibatis.session.SqlSession;
import model.Cliente;

public class ClienteService {
	public int registrar(Cliente reg){
		int ok = 0;
		
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			ClienteMapper clienteMapper = session.getMapper(ClienteMapper.class);
			ok = clienteMapper.registrar(reg);
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}
	
	public int eliminar(int id){
		int ok = 0;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			ClienteMapper clienteMapper = session.getMapper(ClienteMapper.class);
			ok = clienteMapper.eliminar(id);
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}
	
	public List<Cliente> listadoClientes(){
		List<Cliente> lista = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			ClienteMapper clienteMapper = session.getMapper(ClienteMapper.class);
			lista = clienteMapper.getClientes();
		}catch(Exception e){
			e.printStackTrace();
		}
		return lista;
	}
}
