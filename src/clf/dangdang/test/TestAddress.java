package clf.dangdang.test;

import org.junit.Test;

import clf.dangdang.dao.AddressDao;
import clf.dangdang.entity.ShoppingAddress;
import clf.dangdang.util.MyBatisUtil2;

public class TestAddress {
	AddressDao ad = (AddressDao) MyBatisUtil2.getMapper(AddressDao.class);

	@Test
	public void test1() {
		ShoppingAddress shoppingAddress = new ShoppingAddress("name", "address", "addressCode", "telphone", "phone",
				"s", "a");
		ad.addAddress(shoppingAddress);
	}

	@Test
	public void test2() {
		ShoppingAddress shoppingAddress = new ShoppingAddress("name", "addrs", "adsCode", "telphone", "phone", "s",
				"a");
		ad.updateAddress(shoppingAddress);
	}
}
