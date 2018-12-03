package clf.dangdang.action;

import java.util.Date;
import java.util.List;

import clf.dangdang.entity.Product;
import clf.dangdang.service.BookService;
import clf.dangdang.service.BookServiceImpl;

import com.opensymphony.xwork2.ActionSupport;

public class BookMagAction extends ActionSupport {
	BookService bs = new BookServiceImpl();
	private List<Product> books;
	private int id;
	private Product Onebook;

	public Product getOnebook() {
		return Onebook;
	}

	public void setOnebook(Product onebook) {
		Onebook = onebook;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Product> getBooks() {
		return books;
	}

	public void setBooks(List<Product> books) {
		this.books = books;
	}

	public String findByStatus() {

		// ����BookService
		// Product �����жϵ����� �� ��Ӧ��������ֵ a ������ʾ������
		Product product = new Product();
		product.setStatus("flag");
		books = bs.findByIf(product, 2);
		return "findBookByStatusOk";
	}

	public String findByMounts() {

		// ����BookService
		// Product �����жϵ����� �� ��Ӧ��������ֵ a ������ʾ������
		Product product = new Product();
		product.setMounts(1111);
		books = bs.findByIf(product, 8);
		return "findBookByMountsOk";
	}

	public String findByPutAway() {

		// ����BookService
		// Product �����жϵ����� �� ��Ӧ��������ֵ a ������ʾ������
		Product product = new Product();
		product.setPutaway(new java.sql.Date(new Date().getTime()));
		books = bs.findByIf(product, 8);
		return "findBookByPutAwayOk";
	}

	public String findByPutAwayAndMounts() {

		// ����BookService
		// Product �����жϵ����� �� ��Ӧ��������ֵ a ������ʾ������
		Product product = new Product();
		product.setMounts(11111);
		books = bs.findByIf(product, 8);
		return "findBookByPutAwayAndMountsOk";
	}

	public String findBookById() {
		// ��һ�� ������Ҫ��ѯ�����Id

		// �ڶ�������BookService
		Onebook = bs.findById(id);
		return "findBookByIdOk";
	}
}
