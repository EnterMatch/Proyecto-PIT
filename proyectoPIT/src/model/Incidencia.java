package model;

public class Incidencia {
	private int id_inc;
	private String descrip_inc;
	private String fec_ing_inc;
	private String resumen_inc;
	private String solucion_inc;
	private int id_per_cli;
	private int id_gru;
	private int id_per_ope;
	private int id_est;
	private int id_pri;
	
	public Incidencia(int id_inc, String descrip_inc, String fec_ing_inc,
			String resumen_inc, String solucion_inc, int id_per_cli,
			int id_gru, int id_per_ope, int id_est, int id_pri) {
		super();
		this.id_inc = id_inc;
		this.descrip_inc = descrip_inc;
		this.fec_ing_inc = fec_ing_inc;
		this.resumen_inc = resumen_inc;
		this.solucion_inc = solucion_inc;
		this.id_per_cli = id_per_cli;
		this.id_gru = id_gru;
		this.id_per_ope = id_per_ope;
		this.id_est = id_est;
		this.id_pri = id_pri;
	}

	public int getId_inc() {
		return id_inc;
	}

	public void setId_inc(int id_inc) {
		this.id_inc = id_inc;
	}

	public String getDescrip_inc() {
		return descrip_inc;
	}

	public void setDescrip_inc(String descrip_inc) {
		this.descrip_inc = descrip_inc;
	}

	public String getFec_ing_inc() {
		return fec_ing_inc;
	}

	public void setFec_ing_inc(String fec_ing_inc) {
		this.fec_ing_inc = fec_ing_inc;
	}

	public String getResumen_inc() {
		return resumen_inc;
	}

	public void setResumen_inc(String resumen_inc) {
		this.resumen_inc = resumen_inc;
	}

	public String getSolucion_inc() {
		return solucion_inc;
	}

	public void setSolucion_inc(String solucion_inc) {
		this.solucion_inc = solucion_inc;
	}

	public int getId_per_cli() {
		return id_per_cli;
	}

	public void setId_per_cli(int id_per_cli) {
		this.id_per_cli = id_per_cli;
	}

	public int getId_gru() {
		return id_gru;
	}

	public void setId_gru(int id_gru) {
		this.id_gru = id_gru;
	}

	public int getId_per_ope() {
		return id_per_ope;
	}

	public void setId_per_ope(int id_per_ope) {
		this.id_per_ope = id_per_ope;
	}

	public int getId_est() {
		return id_est;
	}

	public void setId_est(int id_est) {
		this.id_est = id_est;
	}

	public int getId_pri() {
		return id_pri;
	}

	public void setId_pri(int id_pri) {
		this.id_pri = id_pri;
	}
	
	
}
