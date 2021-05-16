package cn.gson.kuangjia.model.pojos;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the xueyuan database table.
 * 
 */
@Entity
@NamedQuery(name="Xueyuan.findAll", query="SELECT x FROM Xueyuan x")
public class Xueyuan implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private short xid;

	private String xlike;

	private String xname;

	private String xsex;

	private String xxx;

	public Xueyuan() {
	}

	public short getXid() {
		return this.xid;
	}

	public void setXid(short xid) {
		this.xid = xid;
	}

	public String getXlike() {
		return this.xlike;
	}

	public void setXlike(String xlike) {
		this.xlike = xlike;
	}

	public String getXname() {
		return this.xname;
	}

	public void setXname(String xname) {
		this.xname = xname;
	}

	public String getXsex() {
		return this.xsex;
	}

	public void setXsex(String xsex) {
		this.xsex = xsex;
	}

	public String getXxx() {
		return this.xxx;
	}

	public void setXxx(String xxx) {
		this.xxx = xxx;
	}

}