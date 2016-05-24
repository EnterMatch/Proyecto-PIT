package beans;

public class Prioridad {
	private int id_pri;
    private String descrip_pri;
    
	public Prioridad(int id_pri, String descrip_pri) {
		super();
		this.id_pri = id_pri;
		this.descrip_pri = descrip_pri;
	}

	public int getId_pri() {
		return id_pri;
	}

	public void setId_pri(int id_pri) {
		this.id_pri = id_pri;
	}

	public String getDescrip_pri() {
		return descrip_pri;
	}

	public void setDescrip_pri(String descrip_pri) {
		this.descrip_pri = descrip_pri;
	}
    
    
}
