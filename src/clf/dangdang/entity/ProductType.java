package clf.dangdang.entity;

import java.util.ArrayList;
import java.util.List;

public class ProductType {
	private Integer id;
	private String typeName;
	private Integer parentId;
	private Integer mount;
	private List<ProductType> types = new ArrayList<ProductType>();
	private List<Product> products = new ArrayList<Product>();

	public List<ProductType> getTypes() {
		return types;
	}

	public void setTypes(List<ProductType> types) {
		this.types = types;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public Integer getParentId() {
		return parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	public Integer getMount() {
		return mount;
	}

	public void setMount(Integer mount) {
		this.mount = mount;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

}
