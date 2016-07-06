package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.Incidencia;
import model.prueba;
import mybatis.MyBatisUtil;

public class pruebaService implements IService<prueba> {


	
	@Override
	public int update(prueba incidente) {
		int result = 0;
		SqlSession session = getSqlSession();
		try{
			result = session.update("pruebaMapper.update",incidente);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return result;
	}


	private SqlSession getSqlSession() {
		return MyBatisUtil.getSqlSessionFactory().openSession();
	}


	@Override
	public int create(prueba object) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public List<prueba> read() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public prueba obtain(int id) {
		// TODO Auto-generated method stub
		return null;
	}


}
