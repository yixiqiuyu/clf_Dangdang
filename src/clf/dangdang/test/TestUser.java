package clf.dangdang.test;

import java.util.Date;

import org.junit.Test;

import clf.dangdang.dao.UserDao;
import clf.dangdang.entity.Order;
import clf.dangdang.entity.ShoppingAddress;
import clf.dangdang.entity.User;
import clf.dangdang.util.MyBatisUtil2;

public class TestUser {
	UserDao ud = (UserDao) MyBatisUtil2.getMapper(UserDao.class);

	@Test
	// ����querryByEmailAndPassword
	public void test1() {
		User user = new User();
		user.setEmail("asdfasf");
		user.setPassword("123445");
		User user2 = ud.querryByEmailAndPassword(user);
		System.out.println("user nike name is " + user2.getNikename());

	}

	@Test
	// ����û� ��ע�� ����User��ע��ʱ�� regsterTime
	public void test2() {
		User user = new User("1231a23", "123456", "������1", new java.sql.Date((new Date().getTime())), "Y");
		ud.addUser(user);
		MyBatisUtil2.commit();

	}

	@Test
	// ����User�� updateUser
	public void test3() {
		User user = new User("123456@qq", "123456", "clff", new java.sql.Date((new Date().getTime())), "Y");
		ud.updateUser(user);
		MyBatisUtil2.commit();

	}

	@Test
	public void test4() {
		Order order = new Order();
		ShoppingAddress address = new ShoppingAddress();
		address.setId(1);
		order.setAddress(address);
		java.sql.Date date = new java.sql.Date((new Date().getTime()));
		User user = new User();
		user.setId(1);
		order.setOrderNumber(user.getId() + user.getEmail() + date);
		order.setOrderTime(date);
		order.setTotalprice(1000);
		order.setUser(user);
	}
}
