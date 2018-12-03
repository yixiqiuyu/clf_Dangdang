package clf.dangdang.entity;

import java.util.Date;

public class Order {
	private Integer id;
	private String orderNumber;
	private double totalprice;
	private Date orderTime;
	private String orderStatus;
	private User user;
	private ShoppingAddress address;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}

	public double getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}

	public Date getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public ShoppingAddress getAddress() {
		return address;
	}

	public void setAddress(ShoppingAddress address) {
		this.address = address;
	}

}
