package kr.co.dinner41.service.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.dinner41.dao.UserDao;
import kr.co.dinner41.exception.login.SearchPasswordException;
import kr.co.dinner41.exception.login.UserNotFoundByEmailException;
import kr.co.dinner41.vo.UserVO;

@Service("searchPasswordService")
public class SearchUserByEmailServiceImpl implements SearchUserByEmailService {
	@Autowired
	@Qualifier("userDao")
	private UserDao userDao;

	@Override
	public UserVO exectue(String email) throws SearchPasswordException {
		UserVO user=userDao.selectByEmail(email);
		if(user==null) {
			throw new UserNotFoundByEmailException();
		}
		return user;
	}

}
