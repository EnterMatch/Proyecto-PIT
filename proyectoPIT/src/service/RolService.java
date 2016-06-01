package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.Rol;
import mybatis.MyBatisUtil;

public class RolService implements IService<Rol>{

	@Override
	public int create(Rol rol) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Rol> read() {
		List<Rol> rols = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try {
			rols = session.selectList("RolMapper.read");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return rols;
	}

	@Override
	public int update(Rol object) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Rol obtain(int idRol) {
		// TODO Auto-generated method stub
		Rol rol = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try {
			rol = session.selectOne("RolMapper.obtain", idRol);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return rol;
	}
	
}
