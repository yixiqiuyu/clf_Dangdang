package clf.dangdang.action;

import java.util.Date;

import org.apache.struts2.ServletActionContext;

import clf.dangdang.entity.User;
import clf.dangdang.service.UserService;
import clf.dangdang.service.UserServiceImpl;
import clf.dangdang.util.BaseAction;

import com.opensymphony.xwork2.ActionSupport;

public class UserMagAction extends ActionSupport {
	private User user;
	private String emailCode;

	public User getUser() {
		return user;
	}

	public String getEmailCode() {
		return emailCode;
	}

	public void setEmailCode(String emailCode) {
		this.emailCode = emailCode;
	}

	public void setUser(User user) {
		this.user = user;
	}

	UserService us = new UserServiceImpl();
	BaseAction ba = new BaseAction();

	public String login() {
		// ��һ���������� �Գ�Ա��������

		// �ڶ�������service
		User user2 = us.login(user);
		// �ж��Ƿ��¼�ɹ�
		if (user2 != null) {
			// ��¼�ɹ� ��session�������д�����û�
			ba.setSessionScope("user", user2);
			// �ж��Ƿ��� ��д��ַҳ��ı�־λ
			if (ba.getSessionScope("address") != null) {
				// ����������־λ ��ת�� ��д��ַJsp
				return "addressOk";
			}
			// û�������ַ��־λ ��ת����ҳJsp
			return "loginOk";
		}
		// ��¼ʧ����ת����¼Jsp
		return "loginErro";
	}

	public String register() {
		// ��һ������ע�����Ϣ

		// �ڶ�������Service �����û���ע��ʱ�䣻
		user.setRegistTime(new java.sql.Date((new Date().getTime())));
		emailCode = us.register(user);
		// ע��ɹ����û� ����Session �Թ��������޸�״̬ʹ��
		ba.setSessionScope("email", user);
		// ע��ɹ� ����һ���������֤�� ����Session ��ת����֤�����Jsp��
		ba.setSessionScope("emailCode", emailCode);
		System.out.println("action -------------------" + emailCode);
		return "registerOk";

	}

	public String activeEmailCode() {
		// ��һ�����ܴ�������������֤��

		// �ڶ����Խ��չ�������֤�����������֤��ȶ�
		if (emailCode.equals(ba.getSessionScope("emailCode"))) {
			// �����֤����ȷ ���˻�״̬����; ��Status��ΪY��
			User user = (User) ba.getSessionScope("email");
			user.setStatus("Y");
			us.updateUser(user);
			ba.setSessionScope("user", user);
			// �ж��Ƿ��е�ַ��־λ
			if (ba.getSessionScope("address") != null) {
				// �������ַ��־λ ���û�����Session ��ת��
				// ��¼�ɹ�Jsp������д��ַ���ӵ�Jspҳ��
				// ��ע��ɹ�ʱαװ��Email�Ķ���User ת�浽 #session.User
				// αװ��Ϊ�� ���������Ϣ���Զ���¼��
				ba.setSessionScope("user", user);
				System.out.println("---------user  name  is ----------" + user.getNikename());
				return "addressOk";
			}

			// û�е�ַ��־λ ��ת��ע��ɹ�Jsp
			return "activeEmailCodeOk";
		}
		// �����֤��������� ������д��֤��Ľ���
		return "activeEmailCodeErro";
	}

	public String logout() {
		// �ǳ� ���� Invalidate() ����
		ServletActionContext.getRequest().getSession().removeAttribute("user");
		return "logoutOk";
	}
}
