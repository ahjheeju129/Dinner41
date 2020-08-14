package kr.co.dinner41.service.cart;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import kr.co.dinner41.vo.CartVO;

@Service("cartInsert")
public class CartInsertServiceImpl implements CartInsertService {

	@Override
	public void execute(HttpSession session, int storeId, int menuId) {
		
		// �α����ϸ� ���ǿ� List<CartVO>��ü�� �ְ�, �α׾ƿ��ϸ� ���ǿ��� List<CartVO>��ü�� �����ؾ���
		// ���� �α��εǾ��ִ� ���ȿ��� ���ǿ� List<CartVO>��ü�� �ݵ�� �����ؾ���
		// ����Ʈ ���ΰ� ����������� �־ ����Ʈ ��ü�� ���������� �ȵ�
		@SuppressWarnings("unchecked")
		List<CartVO> carts = (List<CartVO>)session.getAttribute("carts");
		
		// ���� �ʿ�
		// ������ �̰��� �ƴ϶� �α����� ������ �����ؾߵǴ� ����
		if (carts == null) {
			carts = new ArrayList<CartVO>();
		}
		
		carts.add(new CartVO(storeId, menuId, null, null, 0, 0));
		session.removeAttribute("carts");
		session.setAttribute("carts", carts);
	}
}
