package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.Tipo_Usuario;
import mybatis.MyBatisUtil;
import mybatis.mapper.TipoUsuarioMapper;


public class TipoUsuarioService {

	public int registrar(Tipo_Usuario reg){
		int ok = 0;
		
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			TipoUsuarioMapper tipousuariomapper = session.getMapper(TipoUsuarioMapper.class);
			ok = tipousuariomapper.registrar(reg);
			//System.out.println(ok);
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}
	
	public int actualizar(Tipo_Usuario reg){
		int ok = 0;
		
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			TipoUsuarioMapper tipousuariomapper = session.getMapper(TipoUsuarioMapper.class);
			ok = tipousuariomapper.actualizar(reg);
			//System.out.println(ok);
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}
	
	public int eliminar(int id){
		int ok = 0;
		
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			TipoUsuarioMapper tipousuariomapper = session.getMapper(TipoUsuarioMapper.class);
			ok = tipousuariomapper.eliminar(id);
			//System.out.println(ok);
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}
	
	public List<Tipo_Usuario> listatipousuarios(){
		List<Tipo_Usuario> lista = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			TipoUsuarioMapper tipousuariomapper = session.getMapper(TipoUsuarioMapper.class);
			lista = tipousuariomapper.getTipoUsuario();
		}catch(Exception e){
			e.printStackTrace();
		}
		return lista;
	}
	
}
