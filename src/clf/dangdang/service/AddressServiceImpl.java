package clf.dangdang.service;

import clf.dangdang.dao.AddressDao;
import clf.dangdang.entity.ShoppingAddress;
import clf.dangdang.util.MyBatisUtil2;

public class AddressServiceImpl implements AddressService {

	AddressDao ad = (AddressDao) MyBatisUtil2.getMapper(AddressDao.class);

	@Override
	public void addAddress(ShoppingAddress address) {
		try {
			ad.addAddress(address);
			MyBatisUtil2.commit();
		} catch (Exception e) {
			e.printStackTrace();
			MyBatisUtil2.rollback();
		}
	}

	@Override
	public void updateAddress(ShoppingAddress address) {
		try {
			ad.updateAddress(address);
			MyBatisUtil2.commit();
		} catch (Exception e) {
			e.printStackTrace();
			MyBatisUtil2.rollback();
		}
	}

}
