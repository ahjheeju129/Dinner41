package kr.co.dinner41.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.dinner41.service.order.OrderDeleteService;
import kr.co.dinner41.service.order.OrderInsertService;
import kr.co.dinner41.service.order.OrderListService;
import kr.co.dinner41.service.order.OrderUpdateService;
import kr.co.dinner41.service.order.OrderViewService;
import kr.co.dinner41.vo.Menu2OrderViewVO;
import kr.co.dinner41.vo.OrderVO;
import kr.co.dinner41.vo.OrderViewVO;
import kr.co.dinner41.vo.UserVO;

@Controller
public class OrderController {

	@Autowired
	@Qualifier("orderInsert")
	OrderInsertService insertService;

	@Autowired
	@Qualifier("orderDelete")
	OrderDeleteService deleteService;

	@Autowired
	@Qualifier("orderUpdate")
	OrderUpdateService updateService;
	
	@Autowired
	@Qualifier("orderList")
	OrderListService listService;

	@Autowired
	@Qualifier("orderView")
	OrderViewService viewService;
	
	@RequestMapping(value = "/gm/order", method = RequestMethod.GET)
	public String insert() {
		return "user/orderInsert";
	}

	@ResponseBody
	@RequestMapping(value = "/gm/order", method = RequestMethod.POST)
	public HashMap<String, Object> insert(HttpServletRequest request) {
		HashMap<String, Object> map = new HashMap<>();
		HttpSession session = request.getSession(false);
		String [] arrForOrder = (String[])session.getAttribute("arrForOrder");
		String [] arrForOrder2 = (String[])session.getAttribute("arrForOrder2");
		UserVO user = (UserVO)session.getAttribute("loginUser");
		int userId = user.getId();
		
		String getTime = request.getParameter("getTime");
		String payTotal = request.getParameter("payTotal");
		payTotal = payTotal.replaceAll("[^0-9]", "");
		
		String[] payNumberAndOrderId = insertService.execute(arrForOrder, arrForOrder2, userId, Integer.parseInt(getTime), Integer.parseInt(payTotal));
		String payNumber = payNumberAndOrderId[0];
		String orderId = payNumberAndOrderId[1];
		String price = arrForOrder[Integer.parseInt(arrForOrder[1])+2];

		// 결제 진행을 위해 매장결제식별번호, 주문번호, 결제금액, 사용자 정보를 보내줌
		map.put("storePayNumber", payNumber);
		map.put("orderId", orderId);
		map.put("price", price);
		map.put("user", user);
	
		// 결제가 완료되면 완료된 메뉴들을 장바구니에서 제거
		int clearMenuCount = Integer.parseInt(arrForOrder[1]);
		String [] clearMenuIds = new String[clearMenuCount]; 
		for (int i = 0; i < clearMenuCount; i++) {
			clearMenuIds[i] = arrForOrder[i+2];
		}
		map.put("menuIds", clearMenuIds);
		return map;
	}

	
	@RequestMapping(value = "/gm/{page}/order", method = RequestMethod.GET)
	public String listByUser(@PathVariable("page") int page, HttpSession session, Model model) {

		// service내에서 user의 타입을 체크해서 사용자일 경우 다른 쿼리문을 실행하도록 해야함
		UserVO user = (UserVO)session.getAttribute("loginUser");
		HashMap<OrderViewVO, List<Menu2OrderViewVO>> map = null;
		map = listService.execute(user);
		
		for (Map.Entry<OrderViewVO, List<Menu2OrderViewVO>> entry : map.entrySet()) {
			OrderViewVO key = entry.getKey();
			List<Menu2OrderViewVO> value = entry.getValue();
			for (Menu2OrderViewVO m2o : value) {
				System.out.printf("%s / ",  m2o.getMenuName());
			}
			System.out.println();
		}

		model.addAttribute("map", map);
		return "user/orderList";
	}

	
	@RequestMapping(value = "/sm/{page}/order", method = RequestMethod.GET)
	public String listByStore(@PathVariable("page") int page, HttpSession session, Model model) {

		// service내에서 user의 타입을 체크해서 점주일 경우 다른 쿼리문을 실행하도록 해야함
		UserVO user = (UserVO)session.getAttribute("loginUser");
		HashMap<OrderViewVO, List<Menu2OrderViewVO>> map = null;
		map = listService.execute(user);

		model.addAttribute("map", map);
		return "store/orderList";
	}

	
	@RequestMapping(value = "/gm/{id}/order/detail", method = RequestMethod.GET)
	public String view(@PathVariable("id") int orderId, Model model) {
		OrderVO order = viewService.execute(orderId);
		model.addAttribute("order", order);
		return "user/orderView";
	}
	
	
	@RequestMapping(value = "/gm/pay", method = RequestMethod.GET)
	public String pay() {
		return "user/pay";
	}
	
}
