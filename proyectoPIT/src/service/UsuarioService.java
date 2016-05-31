package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.Usuario;
import mybatis.MyBatisUtil;

public class UsuarioService implements IService<Usuario>{

	@Override
	public int create(Usuario usuario) {
		int result = 0;
		SqlSession session = getSqlSession();
		try {
			result = session.insert("UsuarioMapper.create",usuario);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return result;
	}

	@Override
	public List<Usuario> read() {
		List<Usuario> usuarios = null;
		SqlSession session = getSqlSession();
		try {
			usuarios = session.selectList("UsuarioMapper.read");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return usuarios;
	}

	@Override
	public int update(Usuario usuario) {
		int result = 0;
		SqlSession session = getSqlSession();
		try {
			result = session.update("UsuarioMapper.update", usuario);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return result;
	}

	@Override
	public int delete(int idUsuario) {
		int result = 0;
		SqlSession session = getSqlSession();
		try {
			result = session.delete("UsuarioMapper.delete", idUsuario);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return result;
	}

	@Override
	public Usuario obtain(int idUsuario) {
		Usuario usuario = null;
		SqlSession session = getSqlSession();
		try {
			usuario = session.selectOne("UsuarioMapper.obtain", idUsuario);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return usuario;
	}

	private SqlSession getSqlSession() {
		return MyBatisUtil.getSqlSessionFactory().openSession();
	}

}
