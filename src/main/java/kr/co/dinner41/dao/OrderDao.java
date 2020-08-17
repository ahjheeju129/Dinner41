package kr.co.dinner41.dao;

import java.sql.Timestamp;
import java.util.List;

import kr.co.dinner41.exception.order.OrderException;
import kr.co.dinner41.vo.OrderVO;
import kr.co.dinner41.vo.OrderViewVO;

public interface OrderDao {
	void insert(OrderVO order) throws OrderException;
	void delete(int orderId) throws OrderException;
	void update(int orderId, Timestamp pickupDate) throws OrderException;;
	OrderVO selectById(int orderId) throws OrderException;;
	List<OrderVO> selectAll() throws OrderException;;
	List<OrderViewVO> selectAllOrderView(int userId) throws OrderException;
}
