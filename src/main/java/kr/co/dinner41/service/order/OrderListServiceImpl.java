package kr.co.dinner41.service.order;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.dinner41.dao.Menu2OrderDao;
import kr.co.dinner41.dao.OrderDao;
import kr.co.dinner41.dao.StoreDao;
import kr.co.dinner41.vo.Menu2OrderViewVO;
import kr.co.dinner41.vo.OrderViewVO;
import kr.co.dinner41.vo.StoreVO;
import kr.co.dinner41.vo.UserVO;

@Service("orderList")
public class OrderListServiceImpl implements OrderListService {

	@Autowired
	@Qualifier("orderDao")
	private OrderDao oDao;

	@Autowired
	@Qualifier("storeDao")
	private StoreDao sDao;
	
	@Autowired
	@Qualifier("menu2orderDao")
	private Menu2OrderDao m2oDao;
	
	@Override
	public HashMap<OrderViewVO, List<Menu2OrderViewVO>> execute(UserVO user) {

		HashMap<OrderViewVO, List<Menu2OrderViewVO>> map = new HashMap<>();
		List<OrderViewVO> orderList = null;
		List<Menu2OrderViewVO> menuList = null;

		String type = user.getType().getId();
		int userId = user.getId();
	
		if (type.equals("GM")) {
			orderList = oDao.selectAllOrderByUser(userId);
			menuList = m2oDao.selectAll();
			
			for (OrderViewVO order : orderList) {
				int orderId = order.getOrderId();
				List<Menu2OrderViewVO> tmp = new ArrayList<>();

				for (Menu2OrderViewVO m2o : menuList) {
					if (m2o.getOrderId() == orderId) {
						tmp.add(m2o);
					}
				}
				map.put(order, tmp);
			}
		}
		else if (user.getType().getId().equals("SM")) {
			StoreVO store = sDao.selectByUserId(userId);
			int storeId = store.getId();
		
			orderList = oDao.selectAllOrderByStore(storeId);
			menuList = m2oDao.selectAll();
			
			for (OrderViewVO order : orderList) {
				int orderId = order.getOrderId();
				List<Menu2OrderViewVO> tmp = new ArrayList<>();
				
				for (Menu2OrderViewVO m2o : menuList) {
					if (m2o.getOrderId() == orderId) {
						tmp.add(m2o);
					}
				}
				map.put(order, tmp);
			}
		}

		return map;
	}
}
