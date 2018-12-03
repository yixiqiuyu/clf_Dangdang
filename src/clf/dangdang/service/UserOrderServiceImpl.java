package clf.dangdang.service;

import clf.dangdang.dao.OrderDao;
import clf.dangdang.entity.Order;
import clf.dangdang.util.MyBatisUtil2;

public class UserOrderServiceImpl implements UserOrderService {

	OrderDao od = (OrderDao) MyBatisUtil2.getMapper(OrderDao.class);

	@Override
	public void addOrder(Order order) {
		try {
			od.addOrder(order);
			MyBatisUtil2.commit();
		} catch (Exception e) {
			e.printStackTrace();
			MyBatisUtil2.rollback();
		}
	}

}
