package clf.dangdang.service;

import clf.dangdang.entity.Product;
import clf.dangdang.vo.Cart;
import clf.dangdang.vo.CartItem;

public class CartServiceImpl implements CartService {

	@Override
	public Cart addCart(Cart cart, Product product, Integer mounts) {
		// ���ȶԽ��չ����� ��Ʒ�����ж� �� ������ﳵ�м�carts �������Ʒ ��ֱ����Ʒ����
		// mounts

		if (cart.getCarts().containsKey(product.getId())) {
			// �ȴ�Carts �л�� CartItem ���� �����������������и���
			CartItem cartItem = cart.getCarts().get(product.getId());

			cartItem.setAmount(cartItem.getAmount() + mounts);
			System.out.println("-----------amount---------" + cartItem.getAmount());
			// ������� carts
			cart.getCarts().put(product.getId(), cartItem);
			// �޸ĵ����ܼ�

			cart.setTotalprice(cart.getTotalprice() + mounts * product.getDangdangprice());

			// �޸� �����ܼ�
			cart.setOldTotalprice(cart.getOldTotalprice() + mounts * product.getOldprice());

		} else {
			// ���û�������Ʒ �� �������Ʒ��ӵ����ﳵ ����Ĭ�����һ��
			// �ȴ���һ��CartItem ����

			CartItem cartItem = new CartItem(mounts, product);
			// ���빺�ﳵ��
			cart.getCarts().put(product.getId(), cartItem);
			// �޸ĵ����ܼ�
			cart.setTotalprice(cart.getTotalprice() + cartItem.getAmount() * product.getDangdangprice());
			System.out.println("------cart  totalprice --------" + cart.getOldTotalprice());
			// �޸� �����ܼ�
			cart.setOldTotalprice(cart.getOldTotalprice() + cartItem.getAmount() * product.getOldprice());
		}
		return cart;
	}

	@Override
	public Cart deleteCart(Cart cart, Product product) {
		// ɾ����Ʒ�ǰ� carts �е���Ʒ ȥ�� ת�浽 deleteCarts
		// �޸��ܼۣ�

		// ɾ������Ʒ�ļ۸�
		double deletePrice = cart.getCarts().get(product.getId()).getAmount() * product.getDangdangprice();
		double deletePrice2 = cart.getCarts().get(product.getId()).getAmount() * product.getOldprice();
		System.out.println("----------delete cart ----------" + cart.getCarts().get(product.getId()).getAmount());
		System.out.println("----------delete price ----------" + deletePrice + "-------------" + deletePrice2);

		// ���� ���ﳵ�ܼۣ�
		cart.setTotalprice(cart.getTotalprice() - deletePrice);
		cart.setOldTotalprice(cart.getOldTotalprice() - deletePrice2);

		// ɾ��
		cart.getCarts().remove(product.getId());
		// ����ɾ���Ĺ��ﳵ�� ���������Ҫ ����ͨ���� ����Ĳ����� ���deleteCarts ���ܼ�
		CartItem cartItem = new CartItem(1, product);
		cart.getDeleteCarts().put(product.getId(), cartItem);

		return cart;
	}

	@Override
	public Cart returnCart(Cart cart, Product product) {
		// ɾ�����ﳵ�� ������
		// ��deleteCart ����Ӧ����Ʒ�Ƴ���
		cart.getDeleteCarts().remove((product.getId()));

		// ��ɾ������Ʒ��ӵ����ﳵ
		Cart cart2 = addCart(cart, product, 1);

		return cart2;
	}

	@Override
	public Cart changeCart(Cart cart, Product product, Integer mounts) {

		// �ȴ�Carts �л�� CartItem ���� �����������������и���
		CartItem cartItem = cart.getCarts().get(product.getId());

		// ���޸Ĺ�������ܼۣ�
		cart.setTotalprice(cart.getTotalprice() - (cartItem.getAmount() - (mounts)) * product.getDangdangprice());
		cart.setOldTotalprice(cart.getOldTotalprice() - (cartItem.getAmount() - (mounts)) * product.getOldprice());

		// �޸Ķ�������
		cartItem.setAmount(mounts);
		System.out.println("-----------amount---------" + cartItem.getAmount());
		// ������� carts
		cart.getCarts().put(product.getId(), cartItem);

		return cart;
	}

}
