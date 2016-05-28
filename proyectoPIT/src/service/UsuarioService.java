package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;


import model.Usuario;
import mybatis.MyBatisUtil;
import mybatis.mapper.UsuarioMapper;

public class UsuarioService {
	
	public int registrar(Usuario reg){
		int ok = 0;
		
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			UsuarioMapper usuarioMapper = session.getMapper(UsuarioMapper.class);
			ok = usuarioMapper.registrar(reg);
			//System.out.println(ok);
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}
	
	public int actualizar(Usuario reg){
		int ok = 0;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			UsuarioMapper usuarioMapper = session.getMapper(UsuarioMapper.class);
			ok = usuarioMapper.actualizar(reg);
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}
	
	public int eliminar(int id){
		int ok = 0;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			UsuarioMapper usuarioMapper = session.getMapper(UsuarioMapper.class);
			ok = usuarioMapper.eliminar(id);
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}
	
	
	
	public List<Usuario> listadoUsuarios(){
		List<Usuario> lista = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			UsuarioMapper usuarioMapper = session.getMapper(UsuarioMapper.class);
			lista = usuarioMapper.getUsuarios();
		}catch(Exception e){
			e.printStackTrace();
		}
		return lista;
	}

}
