package clf.dangdang.vo;

import java.util.HashMap;
import java.util.Map;

public class Cart {
	private double oldTotalprice;
	private double totalprice;
	private Map<Integer, CartItem> carts = new HashMap<Integer, CartItem>();
	private Map<Integer, CartItem> deleteCarts = new HashMap<Integer, CartItem>();

	public Map<Integer, CartItem> getDeleteCarts() {
		return deleteCarts;
	}

	public void setDeleteCarts(Map<Integer, CartItem> deleteCarts) {
		this.deleteCarts = deleteCarts;
	}

	public double getOldTotalprice() {
		return oldTotalprice;
	}

	public void setOldTotalprice(double oldTotalprice) {
		this.oldTotalprice = oldTotalprice;
	}

	public double getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}

	public Map<Integer, CartItem> getCarts() {
		return carts;
	}

	public void setCarts(Map<Integer, CartItem> carts) {
		this.carts = carts;
	}
}
