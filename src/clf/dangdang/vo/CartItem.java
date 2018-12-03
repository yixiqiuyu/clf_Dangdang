package clf.dangdang.vo;

import clf.dangdang.entity.Product;

public class CartItem {
	private int amount;
	private Product product;

	public CartItem() {
		super();
	}

	public CartItem(int amount, Product product) {
		super();
		this.amount = amount;
		this.product = product;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
}
