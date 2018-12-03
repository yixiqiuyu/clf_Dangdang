package clf.dangdang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import clf.dangdang.entity.Product;

public interface ProductDao {
	// ͨ��������ѯ ���ٴ������� Integer ��ʾ����
	public List<Product> querryByIf(@Param("product") Product product, @Param("a") Integer a);

	// �������Id ����Ȿ�����ϸ��Ϣ
	public Product querryById(Integer id);
}
