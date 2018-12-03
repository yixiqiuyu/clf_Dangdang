package clf.dangdang.entity;

import java.util.ArrayList;
import java.sql.Date;
import java.util.List;

public class User {
	private Integer id;
	private String email;
	private String password;
	private String nikename;
	private Date registTime;
	private String status;
	private List<ShoppingAddress> address = new ArrayList<ShoppingAddress>();

	public User() {
		super();
	}

	public User(String email, String password, String nikename, Date registTime, String status) {
		super();
		this.email = email;
		this.password = password;
		this.nikename = nikename;
		this.registTime = registTime;
		this.status = status;

	}

	public User(Integer id, String email, String password, String nikename, Date registTime, String status,
			List<ShoppingAddress> address) {
		super();
		this.id = id;
		this.email = email;
		this.password = password;
		this.nikename = nikename;
		this.registTime = registTime;
		this.status = status;
		this.address = address;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNikename() {
		return nikename;
	}

	public void setNikename(String nikename) {
		this.nikename = nikename;
	}

	public Date getRegistTime() {
		return registTime;
	}

	public void setRegistTime(Date registTime) {
		this.registTime = registTime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public List<ShoppingAddress> getAddress() {
		return address;
	}

	public void setAddress(List<ShoppingAddress> address) {
		this.address = address;
	}
}
