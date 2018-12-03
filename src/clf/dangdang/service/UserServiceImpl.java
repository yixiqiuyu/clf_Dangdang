package clf.dangdang.service;

import java.util.Random;

import clf.dangdang.dao.UserDao;
import clf.dangdang.entity.User;
import clf.dangdang.util.MyBatisUtil2;

public class UserServiceImpl implements UserService {

	UserDao ud = (UserDao) MyBatisUtil2.getMapper(UserDao.class);

	@Override
	public User login(User user) {
		User user2 = ud.querryByEmailAndPassword(user);
		return user2;
	}

	@Override
	public String register(User user) {
		try {
			ud.addUser(user);
			MyBatisUtil2.commit();
			System.out.println("service ----------------" + getEmailCode());
			return getEmailCode();
		} catch (Exception e) {
			e.printStackTrace();
			MyBatisUtil2.rollback();
			return null;
		}
	}

	@Override
	public void updateUser(User user) {
		try {
			ud.updateUser(user);
			MyBatisUtil2.commit();
		} catch (Exception e) {
			e.printStackTrace();
			MyBatisUtil2.rollback();
		}
	}

	// ����������֤��
	public String getEmailCode() {
		String chars = "=@!#$%^&*0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		Random r = new Random();

		char[] result = new char[30];

		for (int i = 0; i < result.length; i++) {
			result[i] = chars.charAt(r.nextInt(42));
		}

		return new String(result);
	}

}
