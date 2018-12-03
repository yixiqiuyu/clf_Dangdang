package clf.dangdang.entity;

public class OrderItem {
	private Integer id;
	private Integer mount;
	private double oneprice;
	private Order order;
	private Product product;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getMount() {
		return mount;
	}

	public void setMount(Integer mount) {
		this.mount = mount;
	}

	public double getOneprice() {
		return oneprice;
	}

	public void setOneprice(double oneprice) {
		this.oneprice = oneprice;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
}
