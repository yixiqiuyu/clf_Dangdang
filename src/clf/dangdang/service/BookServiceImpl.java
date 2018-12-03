package clf.dangdang.service;

import java.util.List;

import clf.dangdang.dao.ProductDao;
import clf.dangdang.entity.Product;
import clf.dangdang.util.MyBatisUtil2;

public class BookServiceImpl implements BookService {

	ProductDao pd = (ProductDao) MyBatisUtil2.getMapper(ProductDao.class);

	@Override
	public List<Product> findByIf(Product product, Integer a) {
		return pd.querryByIf(product, a);
	}

	@Override
	public Product findById(int id) {
		return pd.querryById(id);
	}

}
