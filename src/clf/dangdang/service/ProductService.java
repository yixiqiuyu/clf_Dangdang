package clf.dangdang.service;

import java.util.List;

import clf.dangdang.entity.ProductType;
import clf.dangdang.vo.Page;

public interface ProductService {
	public List<ProductType> findAllType();

	public List<ProductType> findTypeByFirstIdAndSecondId(Integer firstid, Integer secondid);

	// ��ҳ��ѯ���
	public List<ProductType> findTypeByParentIdAndSecondId(Integer parentid, Integer secondid, Page page);

	// ��ѯ���ж��������� ������ѯ
	public Long findCounts(Integer parentid, Integer secondid);
}
