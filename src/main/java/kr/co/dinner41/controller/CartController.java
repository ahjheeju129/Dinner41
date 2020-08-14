package kr.co.dinner41.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.dinner41.service.cart.CartInsertService;
import kr.co.dinner41.service.cart.CartListService;
import kr.co.dinner41.vo.CartVO;

@Controller
public class CartController {

	@Autowired
	@Qualifier("cartInsert")
	CartInsertService insertService;

	@Autowired
	@Qualifier("cartList")
	CartListService listService;

	// ��ٱ��Ͽ� ���
	@RequestMapping(value = "/gm/cart", method = RequestMethod.POST)
	public String insert(HttpServletRequest request) {

		// ���� �ʿ�
		// request.getSession(false)�� �ٲپ����
		// �׷��� ���� ��ü�� �������� ���� ��� null�� ��ȯ
		HttpSession session = request.getSession(true);
		
		int storeId = Integer.parseInt(request.getParameter("storeId"));
		int menuId = Integer.parseInt(request.getParameter("menuId"));
		insertService.execute(session, storeId, menuId);
		
		// �� ���ϰ����� ���� �ش� �������� �̵��ϴ� ���� �ƴ�
		// �ٵ� ����� �� jsp�������� ���־�� ������ �ȳ�����
		// �� �� ���� �ʿ�
		return "user/storeDetail_menu";
	}

	@RequestMapping(value = "/gm/cart", method = RequestMethod.GET)
	public String list(HttpSession session, Model model) {
		List<CartVO> carts = (List<CartVO>)session.getAttribute("carts");
		if (carts.isEmpty()) {
			// ��ٱ��ϰ� ����ִٰ� ó��
		}
		
		// ���� ����Ʈ�� CartVO���� storeId, menuId�� ����Ǿ��ִ�
		// �� ����Ʈ�� CartVO�� ä���� �ٽ� �����Ѵ�
		carts = listService.execute(carts);
		model.addAttribute("carts", carts);
		return "user/cartView";
	}

	// ���� �ʿ�
	// ���� ������ �ȵ�
	@RequestMapping(value = "/menuView", method = RequestMethod.GET)
	public String menuView() {
		return "user/menuView";
	}
}
