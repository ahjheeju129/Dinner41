package kr.co.dinner41.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.dinner41.command.LoginCommand;
import kr.co.dinner41.exception.login.LoginException;
import kr.co.dinner41.exception.login.SearchPasswordException;
import kr.co.dinner41.exception.user.UserException;
import kr.co.dinner41.service.login.LoginService;
import kr.co.dinner41.service.login.SearchUserByEmailService;
import kr.co.dinner41.service.user.LogoutService;
import kr.co.dinner41.validator.LoginValidator;
import kr.co.dinner41.vo.CartVO;
import kr.co.dinner41.vo.UserVO;

@Controller
public class LoginController {
	@Autowired
	@Qualifier("loginService")
	private LoginService loginService;

	@Autowired
	@Qualifier("searchUserByEmailService")
	private SearchUserByEmailService searchUserByEmailService;
	
	@Autowired
	@Qualifier("sendTempPasswordService")
	private SendTempPasswordService sendTempPasswordService;
	
	@Autowired
	@Qualifier("logoutService")
	private LogoutService logoutService;
	
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String logout(HttpSession session) {
		logoutService.execute(session);
		return "common/login";
	}
	
	
	private String getUserPage(UserVO loginUser) {
		if(loginUser==null) {
			return null;
		}
		String userType=loginUser.getType().getId();
		switch(userType) {
		case "GM":
			return "user/userHome";
		case "SM":
			return "store/storeHome";
		case "AD":
			return "manage/managerHome";
		default:
			return null;
		}
	}

	@RequestMapping(value="/",method=RequestMethod.GET)
	public String login(HttpServletRequest request) {
		HttpSession session=request.getSession(false);
		if(session==null) {
			return "common/login";
		}
		UserVO loginUser=(UserVO)session.getAttribute("loginUser");
		if(loginUser==null) {
			return "common/login";
		}
		String result=getUserPage(loginUser);
		return result;
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public ModelAndView login(LoginCommand command,Errors errors,HttpServletRequest request) {

		ModelAndView mav=new ModelAndView();
		new LoginValidator().validate(command, errors);
		if(errors.hasErrors()) {
			mav.setViewName("common/login");
			return mav;
		}
		
		HttpSession session=request.getSession();
		
		try {
			loginService.execute(command, session);
			mav.addObject("result", "로그인 성공!");
		}catch(LoginException e) {
			mav.addObject("errorMessage",e.getMessage());
			mav.setViewName("common/login");
			return mav;
		}
		catch(UserException e) {
			
		}

		UserVO user=(UserVO)session.getAttribute("loginUser");
		String userType=user.getType().getId();
		String viewName=null;
		viewName=getUserPage(user);
		if(viewName.equals("user/userHome")) {
			session.setAttribute("carts", new ArrayList<CartVO>());
		}
		mav.setViewName(viewName);
		return mav;
	}
	
	
	
	@RequestMapping(value="/sessionCheck",method=RequestMethod.GET)
	public String sessionCheck(HttpServletRequest request) {
		HttpSession session=request.getSession(false);
		if(session==null) {
			return "common/login";
		}
		UserVO loginUser=(UserVO)session.getAttribute("loginUser");
		if(loginUser==null) {
			return "common/login";
		}
		String loginUserType=loginUser.getType().getId();
		String jspName=null;
		switch(loginUserType) {
		case "GM":
			jspName="user/userHome";
			break;
		case "SM":
			jspName="store/storeHome";
			break;
		case "AD":
			jspName="manage/managerHome";
		}
		return jspName;
	}
	
	@RequestMapping(value="/password",method=RequestMethod.GET)
	public String searchPassword() {
		return "common/searchPassword";
	}
	
	@RequestMapping(value="/password",method=RequestMethod.POST)
	public String searchPassword(@RequestParam("email") String email) {
		System.out.println("(searchPassword event handler) email: "+email);
		ModelAndView mav=new ModelAndView();
		try {
			UserVO user=searchUserByEmailService.exectue(email);
			mav.setViewName(viewName);
		}catch(SearchPasswordException e) {

			
		}
		return "common/login";
		
	}
	
}
