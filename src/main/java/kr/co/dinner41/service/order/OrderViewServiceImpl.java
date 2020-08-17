package kr.co.dinner41.service.order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.dinner41.dao.OrderDao;
import kr.co.dinner41.vo.OrderVO;

@Service("orderView")
public class OrderViewServiceImpl implements OrderViewService {

	@Autowired
	@Qualifier("orderDao")
	private OrderDao oDao;
	
	@Override
	public OrderVO execute(int orderId) {
		OrderVO order = null;
		order = oDao.selectById(orderId);
		return order;
	}
}
