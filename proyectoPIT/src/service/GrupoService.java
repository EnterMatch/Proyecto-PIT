package service;

import java.util.List;
import mybatis.MyBatisUtil;

import org.apache.ibatis.session.SqlSession;
import model.Grupo;

public class GrupoService {

	public int registrar(Grupo reg){
		int ok = 0;
		
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			ok = session.insert("GrupoMapper.registrar", reg);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}
	
	public int actualizar(Grupo reg){
		int ok = 0;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			ok = session.update("GrupoMapper.actualizar", reg);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}
	
	public int eliminar(int id){
		int ok = 0;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			ok = session.delete("GrupoMapper.eliminar", id);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}
	
	public List<Grupo> listadoGrupos(){
		List<Grupo> lista = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			lista = session.selectList("GrupoMapper.getGrupos");
		}catch(Exception e){
			e.printStackTrace();
		}
		return lista;
	}
	
}
