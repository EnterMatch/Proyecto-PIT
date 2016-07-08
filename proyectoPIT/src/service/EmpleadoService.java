package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.Empleado;
import mybatis.MyBatisUtil;

public class EmpleadoService implements IService<Empleado> {

	@Override
	public int create(Empleado empleado) {
		int result = 0;
		SqlSession session = getSqlSession();
		try {
			result = session.insert("EmpleadoMapper.create",empleado);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}


	@Override
	public List<Empleado> read() {
		List<Empleado> empleados = null;
		SqlSession session = getSqlSession();
		try {
			empleados = session.selectList("EmpleadoMapper.read");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return empleados;
	}

	@Override
	public int update(Empleado empleado) {
		int result = 0;
		SqlSession session = getSqlSession();
		try {
			result = session.update("EmpleadoMapper.update", empleado);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return result;
	}

	@Override
	public int delete(int idPersona) {
		int result = 0;
		SqlSession session = getSqlSession();
		try {
			result = session.delete("EmpleadoMapper.delete", idPersona);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return result; 
	}

	@Override
	public Empleado obtain(int idPersona) {
		Empleado empleado = null;
		SqlSession session = getSqlSession();
		try {
			empleado = session.selectOne("EmpleadoMapper.obtain", idPersona);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return empleado; 
	}
	
	
	public List<Empleado> readEmpleadoIn(Empleado empleado) {
		List<Empleado> empleados = null;
		SqlSession session = getSqlSession();
		try {
			empleados = session.selectList("EmpleadoMapper.readEmpleadoIncidente", empleado);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return empleados;
	}
	
	
	private SqlSession getSqlSession() {
		return MyBatisUtil.getSqlSessionFactory().openSession();
	}
}
