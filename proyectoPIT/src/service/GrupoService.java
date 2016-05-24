package service;

import java.util.List;
import mybatis.MyBatisUtil;
import mybatis.mapper.GrupoMapper;
import org.apache.ibatis.session.SqlSession;
import beans.Grupo;

public class GrupoService {

	public int registrar(Grupo reg){
		int ok = 0;
		
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			GrupoMapper grupoMapper = session.getMapper(GrupoMapper.class);
			ok = grupoMapper.registrar(reg);
			//System.out.println(ok);
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}
	
	public int actualizar(Grupo reg){
		int ok = 0;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			GrupoMapper grupoMapper = session.getMapper(GrupoMapper.class);
			ok = grupoMapper.actualizar(reg);
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}
	
	public int eliminar(int id){
		int ok = 0;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			GrupoMapper grupoMapper = session.getMapper(GrupoMapper.class);
			ok = grupoMapper.eliminar(id);
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}
	
	public List<Grupo> listadoGrupos(){
		List<Grupo> lista = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			GrupoMapper grupoMapper = session.getMapper(GrupoMapper.class);
			lista = grupoMapper.getGrupos();
		}catch(Exception e){
			e.printStackTrace();
		}
		return lista;
	}
	
}
