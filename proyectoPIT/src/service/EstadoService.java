package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.Estado;
import mybatis.MyBatisUtil;


public class EstadoService implements IService<Estado>{

	@Override
	public int create(Estado object) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Estado> read() {
		SqlSession session = getSqlSession(); 
		List<Estado> estados = session.selectList("EstadoMapper.read");
		session.close();
		return estados; 
	}


	@Override
	public int update(Estado object) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Estado obtain(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	private SqlSession getSqlSession() {
		return MyBatisUtil.getSqlSessionFactory().openSession();
	}
}
