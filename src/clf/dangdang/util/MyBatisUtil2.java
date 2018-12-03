package clf.dangdang.util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisUtil2 {
	private static SqlSessionFactory sqlSessionFactory;
	private static final ThreadLocal<SqlSession> tl = new ThreadLocal<SqlSession>();

	static {
		try {
			InputStream is = Resources.getResourceAsStream("mybatis-config.xml");

			sqlSessionFactory = new SqlSessionFactoryBuilder().build(is);

		} catch (IOException e) {
			e.printStackTrace();
			throw new RuntimeException("��ȡ�����ļ�ʧ��");
		}
	}

	public static SqlSession openSqlSession() {
		SqlSession sqlSession = tl.get();
		if (sqlSession == null) {
			sqlSession = sqlSessionFactory.openSession();
			tl.set(sqlSession);
		}
		return sqlSession;
	}

	// ������ʱ��ʹ�� �Ա�֤ÿ�ػ�õ����Ӷ�����������һ��
	public static SqlSession getSqlSession() {
		return sqlSessionFactory.openSession();
	}

	public static void closeSqlSession() {
		SqlSession sqlSession = openSqlSession();
		sqlSession.close();
		tl.remove();
	}

	public static void commit() {
		SqlSession sqlSession = openSqlSession();
		sqlSession.commit();
		closeSqlSession();
	}

	public static void rollback() {
		SqlSession sqlSession = openSqlSession();
		sqlSession.rollback();
		closeSqlSession();
	}

	/*
	 * UserDAO userDAO = (UserDAO)MyBatisUtil.getMapper(UserDAO.class);
	 * ProductDAO userDAO = (ProductDAO)MyBatisUtil.getMapper(ProductDAO.class);
	 * 
	 * 
	 */

	public static Object getMapper(Class clazz) {
		return openSqlSession().getMapper(clazz);
	}

}
