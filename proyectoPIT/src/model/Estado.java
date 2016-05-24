package model;

public class Estado {
	private int id_est;
    private String descrip_est;
    
	public Estado(int id_est, String descrip_est) {
		super();
		this.id_est = id_est;
		this.descrip_est = descrip_est;
	}
	public int getId_est() {
		return id_est;
	}
	public void setId_est(int id_est) {
		this.id_est = id_est;
	}
	public String getDescrip_est() {
		return descrip_est;
	}
	public void setDescrip_est(String descrip_est) {
		this.descrip_est = descrip_est;
	}
    
    
}
