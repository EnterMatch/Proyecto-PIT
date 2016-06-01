package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.Cliente;
import model.Empresa;
import mybatis.MyBatisUtil;



public class EmpresaService implements IService<Empresa>{

	@Override
	public int create(Empresa object) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Empresa> read() {
		List<Empresa> empresas = null;
		SqlSession session = getSqlSession();
		try{
			empresas = session.selectList("EmpresaMapper.read");
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return empresas;
		
	}


	@Override
	public int update(Empresa object) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Empresa obtain(int idEmpresa) {
		Empresa empresa = null;
		SqlSession session = getSqlSession();
		try{
			empresa = session.selectOne("EmpresaMapper.obtain", idEmpresa);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return empresa;
	}
	
	private SqlSession getSqlSession() {
		return MyBatisUtil.getSqlSessionFactory().openSession();
	}
	
	
    	
}
