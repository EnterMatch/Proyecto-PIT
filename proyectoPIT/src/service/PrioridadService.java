package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.Prioridad;
import mybatis.MyBatisUtil;

public class PrioridadService implements IService<Prioridad>{

	@Override
	public int create(Prioridad object) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Prioridad> read() {
		SqlSession session = getSqlSession(); 
		List<Prioridad> prioridades = session.selectList("PrioridadMapper.read");
		session.close();
		return prioridades;
	}

	@Override
	public int update(Prioridad object) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Prioridad obtain(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	private SqlSession getSqlSession() {
		return MyBatisUtil.getSqlSessionFactory().openSession();
	}
	
}
