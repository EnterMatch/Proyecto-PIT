package service;

import java.util.List;
import mybatis.MyBatisUtil;

import org.apache.ibatis.session.SqlSession;
import model.Grupo;

public class GrupoService implements IService<Grupo> {

	@Override
	public int create(Grupo object) {
		int result = 0;
		
		SqlSession session = getSqlSession();
		try{
			result = session.insert("GrupoMapper.create", object);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return result;
	}


	@Override
	public List<Grupo> read() {
		List<Grupo> grupo = null;
		SqlSession session = getSqlSession();
		try{
			grupo = session.selectList("GrupoMapper.read");
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return grupo;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Grupo obtain(int idGrupo) {
		Grupo incidente = null;
		SqlSession session = getSqlSession();
		try{
			incidente = session.selectOne("GrupoMapper.obtain", idGrupo);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return incidente;
	}

	@Override
	public int update(Grupo object) {
		int result = 0;
		SqlSession session = getSqlSession();
		try{
			result = session.update("GrupoMapper.update",object);
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
}
