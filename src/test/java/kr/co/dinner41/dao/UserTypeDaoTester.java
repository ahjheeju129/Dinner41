package kr.co.dinner41.dao;

import java.util.List;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.dinner41.exception.UserTypeException;
import kr.co.dinner41.vo.UserTypeVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {
		"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
})
public class UserTypeDaoTester {
	@Autowired
	private ApplicationContext ctx;
	
	@Ignore
	@Test
	public void testInsert() {
		UserTypeDao dao=ctx.getBean("userTypeDao",UserTypeDao.class);
		UserTypeVO userType=new UserTypeVO("","�׽�Ʈ��");
		try {
			dao.insert(userType);
			System.out.println("usertype insert����");
		}
		catch(UserTypeException e) {
			System.out.println(e.getMessage());
		}
	}

	@Ignore
	@Test
	public void testUpdate() {
		UserTypeDao dao=ctx.getBean("userTypeDao",UserTypeDao.class);
		try {
			dao.update("TE","������Ʈ �׽�Ʈ");
			System.out.println("usertype update����");
		}
		catch(UserTypeException e) {
			System.out.println(e.getMessage());
		}
	}

	@Ignore
	@Test
	public void testSelectAll() {
		UserTypeDao dao=ctx.getBean("userTypeDao",UserTypeDao.class);
		List<UserTypeVO> userTypes=null;
		try {
			userTypes=dao.selectAll();
			for(int i=0;i<userTypes.size();i++) {
				System.out.println("user_type_id:"+userTypes.get(i).getId()+", user_type_name:"+userTypes.get(1).getName()+"\n");
			}
			System.out.println("usertype selectAll����");
		}
		catch(NullPointerException e) {
			System.out.println("usertype selectAll����");
		}
		catch(UserTypeException e) {
			System.out.println(e.getMessage());
		}
	}

	@Ignore
	@Test
	public void testDelete() {
		UserTypeDao dao=ctx.getBean("userTypeDao",UserTypeDao.class);
		try {
			dao.delete("TE");
			System.out.println("usertype delete����");
		}
		catch(UserTypeException e) {
			System.out.println(e.getMessage());
		}
	}




}
