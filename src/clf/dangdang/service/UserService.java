package clf.dangdang.service;

import clf.dangdang.entity.User;

public interface UserService {
	public User login(User user);

	// ���ݿ�������ݳɹ�Ҫ����һ�������������֤��
	public String register(User user);

	public void updateUser(User user);
}
