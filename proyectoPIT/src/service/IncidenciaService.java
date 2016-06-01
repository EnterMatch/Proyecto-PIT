package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.Incidencia;
import mybatis.MyBatisUtil;

public class IncidenciaService implements IService<Incidencia>{

	public static void main(String[] args) {
		IncidenciaService is = new IncidenciaService();
		Incidencia incidente = new Incidencia(1,"m","2012-10-25","descirpcion", "solucion", 1,1,1,1,1,1);
		is.create(incidente);
		
		List<Incidencia> lista =  is.read();
		for(Incidencia i: lista){
			System.out.println(i.getDescripIncidencia());
		}
	}

	@Override
	public int create(Incidencia incidente) {
		int result = 0;
		
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			result = session.insert("IncidenciaMapper.create", incidente);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return result;
	}

	@Override
	public List<Incidencia> read() {
		List<Incidencia> incidente = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			incidente = session.selectList("IncidenciaMapper.read");
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return incidente;
	}

	@Override
	public int update(Incidencia incidente) {
		int result = 0;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			result = session.update("IncidenciaMapper.update",incidente);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return result;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Incidencia obtain(int id) {
		Incidencia incidente = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			incidente = session.selectOne("IncidenciaMapper.obtain", id);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return incidente;
	}

}
