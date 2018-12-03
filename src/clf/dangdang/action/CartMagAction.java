package clf.dangdang.action;

import clf.dangdang.entity.Product;
import clf.dangdang.service.BookService;
import clf.dangdang.service.BookServiceImpl;
import clf.dangdang.service.CartService;
import clf.dangdang.service.CartServiceImpl;
import clf.dangdang.util.BaseAction;
import clf.dangdang.vo.Cart;

import com.opensymphony.xwork2.ActionSupport;

public class CartMagAction extends ActionSupport {
	private int id;
	private int mounts;

	public int getMounts() {
		return mounts;
	}

	public void setMounts(int mounts) {
		this.mounts = mounts;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	CartService cs = new CartServiceImpl();
	BaseAction ba = new BaseAction();
	BookService bs = new BookServiceImpl();

	public String addToCart() {
		// ��� ��ӵ���Ʒ������
		System.out.println("---------------------cart-----------------");
		// ����ProductService ͨ��Id ��������Ʒ
		Product product = bs.findById(id);
		if (mounts == 0)
			mounts = 1;
		// ����CartService
		// ��һ�� �ж�Session��û�й��ﳵ ���û�д���һ�����ﳵ��

		if (ba.getSessionScope("cart") == null) {
			Cart cart = new Cart();
			// û�й��ﳵ �ض�������Ϊ1
			Cart cart2 = cs.addCart(cart, product, mounts);
			ba.setSessionScope("cart", cart2);
		} else {
			// ȡ��session �е�Cart
			Cart cart = (Cart) ba.getSessionScope("cart");
			// ��Ӷ�Ӧ����Ʒ������
			Cart cart3 = cs.addCart(cart, product, mounts);
			ba.setSessionScope("cart", cart3);
		}
		return "addToCartOk";
	}

	public String deleteFromCart() {
		// �����Ҫɾ������Ʒ
		Product product = bs.findById(id);
		// ����CartService
		Cart cart = (Cart) ba.getSessionScope("cart");

		Cart cart2 = cs.deleteCart(cart, product);
		ba.setSessionScope("cart", cart2);

		return "deleteFromCartOk";
	}

	public String returnToCart() {
		// �����Ҫ�ָ�����Ʒ
		Product product = bs.findById(id);
		// ����CartService
		Cart cart = (Cart) ba.getSessionScope("cart");

		Cart cart2 = cs.returnCart(cart, product);
		ba.setSessionScope("cart", cart2);

		return "returnToCartOk";
	}

	public String changeCart() {
		// �����Ҫ�޸ĵ���Ʒ
		Product product = bs.findById(id);
		// ����CartService
		Cart cart = (Cart) ba.getSessionScope("cart");

		Cart cart2 = cs.changeCart(cart, product, mounts);
		ba.setSessionScope("cart", cart2);

		return "changeCartOk";
	}

	// ��ת��JSP or ..
	public String returnCartJsp() {
		if (ba.getSessionScope("cart") == null)
			return "returnKongJsp";
		else
			return "returnCartJsp";
	}

}
