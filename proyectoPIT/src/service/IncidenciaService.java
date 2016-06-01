package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.Incidencia;
import mybatis.MyBatisUtil;

public class IncidenciaService implements IService<Incidencia>{

	@Override
	public int create(Incidencia incidente) {
		int result = 0;
		
		SqlSession session = getSqlSession();
		try{
			result = session.insert("IncidenciaMapper.create", incidente);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return result;
	}

	@Override
	public List<Incidencia> read() {
		List<Incidencia> incidente = null;
		SqlSession session = getSqlSession();
		try{
			incidente = session.selectList("IncidenciaMapper.read");
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return incidente;
	}

	@Override
	public int update(Incidencia incidente) {
		int result = 0;
		SqlSession session = getSqlSession();
		try{
			result = session.update("IncidenciaMapper.update",incidente);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return result;
	}

	@Override
	public int delete(int id) {
		int result = 0;
		SqlSession session = getSqlSession();
		try{
			result = session.delete("IncidenciaMapper.delete", id);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return result;
	}

	@Override
	public Incidencia obtain(int id) {
		Incidencia incidente = null;
		SqlSession session = getSqlSession();
		try{
			incidente = session.selectOne("IncidenciaMapper.obtain", id);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return incidente;
	}
	
	private SqlSession getSqlSession() {
		return MyBatisUtil.getSqlSessionFactory().openSession();
	}

}
