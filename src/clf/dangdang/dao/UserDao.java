package clf.dangdang.dao;

import clf.dangdang.entity.User;

public interface UserDao {
	public User querryByEmailAndPassword(User user);

	public void addUser(User user);

	public void updateUser(User user);
}
