package mapper;

import static org.junit.Assert.*;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import pojo.StuInfo;



public class StuInfoMapperTest {

	private SqlSessionFactory ssf;
	@Before
	public void setUp() throws Exception {
		String resource="mybatis-config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		//创建会话工厂
		ssf=new SqlSessionFactoryBuilder().build(inputStream);
		
	}

	@Test
	public void test() throws Exception {
		SqlSession ss=ssf.openSession();
		StuInfoMapper om=ss.getMapper(StuInfoMapper.class);
		StuInfo info=om.selectByPrimaryKey((long) 1);
		System.out.println("name:"+info.getName());
		System.out.println("city:"+info.getCity());
		System.out.println("type:"+info.getType());
		ss.close();
		
		
		
	}

}
