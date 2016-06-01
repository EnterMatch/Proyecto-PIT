package service;

import java.util.List;
import mybatis.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import model.Cliente;
import model.Rol;

public class RolService implements IService<Rol>{
	
	@Override
	public int create(Rol rol){
		int result = 0;
		
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			result = session.insert("RolMapper.create", rol);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return result;
	}
	
	@Override
	public List<Rol> read(){
		List<Rol> rol = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			rol = session.selectList("RolMapper.read");
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return rol;
	}
	
	@Override
	public int update(Rol rol) {
		int result = 0;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			result = session.update("RolMapper.update",rol);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return result;
	}
	
	@Override
	public int delete(int idRol) {
		int result = 0;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			result = session.delete("RolMapper.delete", idRol);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return result;
	}

	@Override
	public Rol obtain(int idRol) {
		Rol rol = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			rol = session.selectOne("RolMapper.obtain", idRol);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return rol;
	}
	
}
