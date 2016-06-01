package service;

import java.util.List;
import mybatis.MyBatisUtil;

import org.apache.ibatis.session.SqlSession;
import model.Grupo;

public class GrupoService implements IService<Grupo> {

	@Override
	public int create(Grupo object) {
		int result = 0;
		
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
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
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
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
	public Grupo obtain(int id) {
		Grupo incidente = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			incidente = session.selectOne("GrupoMapper.obtain", id);
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
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
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
	
}
