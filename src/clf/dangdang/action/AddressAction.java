package clf.dangdang.action;

import java.util.Date;

import clf.dangdang.entity.Order;
import clf.dangdang.entity.ShoppingAddress;
import clf.dangdang.entity.User;
import clf.dangdang.service.AddressService;
import clf.dangdang.service.AddressServiceImpl;
import clf.dangdang.service.UserOrderService;
import clf.dangdang.service.UserOrderServiceImpl;
import clf.dangdang.util.BaseAction;
import clf.dangdang.vo.Cart;

import com.opensymphony.xwork2.ActionSupport;

public class AddressAction extends ActionSupport {
	private ShoppingAddress address;
	private String orderNumber;
	private double totalprice;

	public double getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}

	public String getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}

	public ShoppingAddress getAddress() {
		return address;
	}

	public void setAddress(ShoppingAddress address) {
		this.address = address;
	}

	AddressService as = new AddressServiceImpl();

	BaseAction ba = new BaseAction();

	public String addAddress() {

		// ��ӵ�ַ��ͬʱ ��� ����
		User user = (User) ba.getSessionScope("user");
		Cart cart = (Cart) ba.getSessionScope("cart");
		address.setUser(user);
		System.out.println("-------------------------Action----------------" + user.getId());
		System.out.println("-------------------------Action----------------" + cart.getTotalprice());

		// ��������
		Order order = new Order();
		order.setAddress(address);
		java.sql.Date date = new java.sql.Date((new Date().getTime()));
		order.setOrderNumber(user.getId() + user.getEmail() + date);
		order.setOrderTime(date);
		order.setTotalprice(cart.getTotalprice());
		order.setUser(user);
		orderNumber = order.getOrderNumber();
		totalprice = order.getTotalprice();

		// ���ﳵ��գ�

		ba.setSessionScope("cart", null);
		// ��� order �� ���ݿ⣻
		UserOrderService uos = new UserOrderServiceImpl();
		uos.addOrder(order);
		// ��ӵ�ַ
		AddressService as = new AddressServiceImpl();
		as.addAddress(address);
		return "addAddressOk";
	}

	public String updateAddress() {
		// �޸� ״̬ ���� ֱ�Ӹ� ��ֵ ok
		as.updateAddress(address);
		return "updateAddressOk";
	}
}
