package service;

import model.Incidencia;
import model.prueba;

public class pruebas {

	public static void main(String[] args) {
		pruebaService is = new pruebaService();
		prueba i = new prueba(1, "aaaa", "b", "c");
		System.out.println(i);
		is.update(i);
	}
	
}
