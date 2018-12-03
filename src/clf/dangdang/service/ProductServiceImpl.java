package clf.dangdang.service;

import java.util.List;

import clf.dangdang.dao.ProductTypeDao;
import clf.dangdang.entity.ProductType;
import clf.dangdang.util.MyBatisUtil2;
import clf.dangdang.vo.Page;

public class ProductServiceImpl implements ProductService {

	ProductTypeDao ptd = (ProductTypeDao) MyBatisUtil2.getMapper(ProductTypeDao.class);

	@Override
	public List<ProductType> findAllType() {
		List<ProductType> types = ptd.querryAllType();
		return types;
	}

	@Override
	public List<ProductType> findTypeByFirstIdAndSecondId(Integer firstid, Integer secondid) {
		List<ProductType> types = ptd.querryTypeByFirstIdAndSecondId(firstid, secondid);
		return types;
	}

	@Override
	public List<ProductType> findTypeByParentIdAndSecondId(Integer parentid, Integer secondid, Page page) {
		List<ProductType> types = ptd.querryTypeByParentIdAndSecondId(parentid, secondid, page);
		return types;
	}

	@Override
	public Long findCounts(Integer parentid, Integer secondid) {
		return ptd.querryCounts(parentid, secondid);
	}

}
