package clf.dangdang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import clf.dangdang.entity.ProductType;
import clf.dangdang.vo.Page;

public interface ProductTypeDao {
	public List<ProductType> querryAllType();

	public List<ProductType> querryTypeByFirstIdAndSecondId(@Param("firstid") Integer firstid,
			@Param("secondid") Integer secondid);

	// ��ҳ��ѯ ͼ��
	public List<ProductType> querryTypeByParentIdAndSecondId(@Param("parentid") Integer parentid,
			@Param("secondid") Integer secondid, @Param("page") Page page);

	// ��ѯ�ܹ��ж��������ݣ�������ѯ
	public Long querryCounts(@Param("parentid") Integer parentid, @Param("secondid") Integer secondid);

}
