package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.Tipo_Operador;
import mybatis.MyBatisUtil;
import mybatis.mapper.TipoOperadorMapper;

public class TipoOperadorService {
	
	public int registrar(Tipo_Operador reg){
		int ok = 0;
		
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			TipoOperadorMapper tipooperadormapper = session.getMapper(TipoOperadorMapper.class);
			ok = tipooperadormapper.registrar(reg);
			//System.out.println(ok);
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}
	
	public int actualizar(Tipo_Operador reg){
		int ok = 0;
		
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			TipoOperadorMapper tipooperadormapper = session.getMapper(TipoOperadorMapper.class);
			ok = tipooperadormapper.actualizar(reg);
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
			TipoOperadorMapper tipooperadormapper = session.getMapper(TipoOperadorMapper.class);
			ok = tipooperadormapper.eliminar(id);
			//System.out.println(ok);
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}
	
	public List<Tipo_Operador> listatipousuarios(){
		List<Tipo_Operador> lista = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			TipoOperadorMapper tipooperadormapper = session.getMapper(TipoOperadorMapper.class);
			lista = tipooperadormapper.getTipoOperador();
		}catch(Exception e){
			e.printStackTrace();
		}
		return lista;
	}

}
