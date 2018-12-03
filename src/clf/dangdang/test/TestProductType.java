package clf.dangdang.test;

import java.util.List;

import org.junit.Test;

import clf.dangdang.dao.ProductTypeDao;
import clf.dangdang.entity.ProductType;
import clf.dangdang.util.MyBatisUtil2;
import clf.dangdang.vo.Page;

public class TestProductType {
	ProductTypeDao ptd = (ProductTypeDao) MyBatisUtil2.getMapper(ProductTypeDao.class);

	@Test
	public void test1() {
		List<ProductType> types = ptd.querryAllType();
		List<ProductType> types2 = types.get(0).getTypes();
		for (ProductType productType : types2) {
			System.out.println(" productType typename is" + productType.getTypeName());
		}
	}

	@Test
	public void test2() {

		List<ProductType> types = ptd.querryTypeByFirstIdAndSecondId(1, null);
		System.out.println("types name is " + types.get(0).getTypes().size());
	}

	@Test
	public void test3() {
		Page page = new Page(2);
		page.setPageIndex(2);
		List<ProductType> types = ptd.querryTypeByParentIdAndSecondId(1, null, page);
		System.out.println("types name is " + types.get(0).getProducts().get(0).getName());
	}
}
