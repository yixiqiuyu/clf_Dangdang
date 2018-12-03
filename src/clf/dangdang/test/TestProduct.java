package clf.dangdang.test;

import java.util.List;

import org.junit.Test;

import clf.dangdang.dao.ProductDao;
import clf.dangdang.entity.Product;
import clf.dangdang.util.MyBatisUtil2;

public class TestProduct {
	ProductDao pd = (ProductDao) MyBatisUtil2.getMapper(ProductDao.class);

	@Test
	public void test1() {
		Product product = new Product();
		product.setStatus("flag");
		List<Product> products = pd.querryByIf(product, 1);
		System.out.println("-----------------" + products.size());
	}

	@Test
	public void test2() {
		Product product = pd.querryById(7);
		System.out.println("-----------" + product.getName());

	}
}
