package clf.dangdang.service;

import clf.dangdang.entity.Product;
import clf.dangdang.vo.Cart;

public interface CartService {
	public Cart addCart(Cart cart, Product product, Integer mounts);

	public Cart deleteCart(Cart cart, Product product);

	public Cart returnCart(Cart cart, Product product);

	public Cart changeCart(Cart cart, Product product, Integer mounts);
}
