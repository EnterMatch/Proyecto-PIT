package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.EmpresaCliente;
import mybatis.MyBatisUtil;

public class EmpresaClienteService implements IService<EmpresaCliente> {

	@Override
	public int create(EmpresaCliente object) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<EmpresaCliente> read() {
		List<EmpresaCliente> empresaclientes = null;
		SqlSession session = getSQLSession();
		try{
			empresaclientes = session.selectList("EmpresaClienteMapper.read");
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return empresaclientes;
	}


	@Override
	public int update(EmpresaCliente object) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	public EmpresaCliente obtain(EmpresaCliente empresacliente) {
		EmpresaCliente empresa_cliente = null;
		SqlSession session = getSQLSession();
		try{
			empresa_cliente = session.selectOne("EmpresaClienteMapper.obtain", empresacliente);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return empresa_cliente;
	}

	
	@Override
	public EmpresaCliente obtain(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	
	private SqlSession getSQLSession() {
		return MyBatisUtil.getSqlSessionFactory().openSession();
	}

}
