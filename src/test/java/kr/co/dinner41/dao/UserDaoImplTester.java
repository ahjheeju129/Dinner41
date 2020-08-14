package kr.co.dinner41.dao;

import java.util.List;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.dinner41.exception.UserDeleteFailedException;
import kr.co.dinner41.exception.UserInsertFailedException;
import kr.co.dinner41.vo.UserTypeVO;
import kr.co.dinner41.vo.UserVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={
	"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
})
public class UserDaoImplTester {
	@Autowired
	private ApplicationContext ctx;
	
	@Test
	@Ignore
	public void insertTest() {
		UserDao userDao=ctx.getBean("userDao",UserDao.class);
		UserTypeDao userTypeDao=ctx.getBean("userTypeDao",UserTypeDao.class);
		UserTypeVO type=userTypeDao.selectById("GM");
		if(type==null) {
			System.out.println("해당하는 회원유형을 불러올 수 없습니다.");
			return;
		}
		UserVO user=new UserVO(0,type,"test@naver.com","test","테스트","testAddress1","testAddress2",35,127,"010-0000-0000",null,null);
		try {
			userDao.insert(user);
			System.out.println("회원 추가하기에 성공했습니다.");
		}
		catch(UserInsertFailedException e) {
			System.out.println(e.getMessage());
		}
	}

	@Test
	public void deleteTest() {
		UserDao dao=ctx.getBean("userDao",UserDao.class);
		try {
			dao.delete("test@naver.com","test");
			System.out.println("회원 삭제하기에 성공했습니다.");
		}
		catch(UserDeleteFailedException e) {
			System.out.println(e.getMessage());
		}
	}

	@Test
	@Ignore
	public void updateNameTest() {
		UserDao userDao=ctx.getBean("userDao",UserDao.class);
		UserVO user=new UserVO(12,null,null,null,"테스트 업데이트","testAddress1_2","testAddress2_2",40,150,"010-1111-1111",null,null);
		try {
			userDao.update(user);
			System.out.println("회원 수정하기에 성공했습니다.");
		}
		catch(Exception e) {
		//catch(UserUpdateFailedException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}

	@Test
	@Ignore
	public void selectTest() {
		UserDao userDao=ctx.getBean("userDao",UserDao.class);
		List<UserVO> users=null;
		try {
			users=userDao.selectAll();
			if(users==null) {
				System.out.println("회원의 목록을 불러오지 못함");
			}
			for(UserVO user:users) {
				System.out.println(user.getName());
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}

}