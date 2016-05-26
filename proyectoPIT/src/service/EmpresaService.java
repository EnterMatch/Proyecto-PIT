package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.Cliente;
import model.Empresa;
import mybatis.MyBatisUtil;



public class EmpresaService {
	
	public static void main(String[] args) {
		List<Empresa> lista = new EmpresaService().listadoEmpresas();
		for(Empresa x : lista){
			System.out.println(x.toString());
			
		}
		
	}
	
	public Empresa obtenerEmpresa(int id_emp){
		Empresa empresa = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			empresa = session.selectOne("EmpresaMapper.obtener",id_emp);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return empresa;
	}
	
	public List<Empresa> listadoEmpresas(){
		List<Empresa> listaEmpresas = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			listaEmpresas = session.selectList("EmpresaMapper.listadoEmpresa");
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return listaEmpresas;
	}
}
