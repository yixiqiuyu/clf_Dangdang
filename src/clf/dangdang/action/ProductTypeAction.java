package clf.dangdang.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import clf.dangdang.entity.ProductType;
import clf.dangdang.service.ProductService;
import clf.dangdang.service.ProductServiceImpl;
import clf.dangdang.util.BaseAction;
import clf.dangdang.vo.Page;

public class ProductTypeAction extends ActionSupport {
	ProductService ps = new ProductServiceImpl();
	private List<ProductType> types;
	private Integer firstid;
	private Integer secondid;
	private List<ProductType> types2;
	private Page page;

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public List<ProductType> getTypes2() {
		return types2;
	}

	public void setTypes2(List<ProductType> types2) {
		this.types2 = types2;
	}

	public Integer getFirstid() {
		return firstid;
	}

	public void setFirstid(Integer firstid) {
		this.firstid = firstid;
	}

	public Integer getSecondid() {
		return secondid;
	}

	public void setSecondid(Integer secondid) {
		this.secondid = secondid;
	}

	public List<ProductType> getTypes() {
		return types;
	}

	public void setTypes(List<ProductType> types) {
		this.types = types;
	}

	BaseAction ba = new BaseAction();

	public String findAllType() {
		// ����Service ����������͵�Type;
		types = ps.findAllType();
		return "findAllOk";
	}

	public String findTypeByFirstIdAndSecondId() {
		// ��ѯ���������������������
		types = ps.findTypeByFirstIdAndSecondId(firstid, null);
		// ��ѯ���������������鼮����ҳ��ʾ

		if (page == null) {
			page = new Page();
			page.setPageIndex(1);
		}
		if (secondid == null) {
			Long counts = ps.findCounts(firstid, null);
			page.setAllCounts(counts);
			types2 = ps.findTypeByParentIdAndSecondId(firstid, null, page);
		} else {
			Long counts = ps.findCounts(null, secondid);
			page.setAllCounts(counts);
			types2 = ps.findTypeByParentIdAndSecondId(null, secondid, page);
		}
		return "findByIdOk";
	}
}
