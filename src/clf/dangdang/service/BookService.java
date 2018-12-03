package clf.dangdang.service;

import java.util.List;

import clf.dangdang.entity.Product;

public interface BookService {
	public List<Product> findByIf(Product product, Integer a);

	public Product findById(int id);
}
