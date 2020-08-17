package kr.co.dinner41.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import kr.co.dinner41.vo.OrderViewVO;

public class OrderViewMapper implements RowMapper<OrderViewVO>{

	@Override
	public OrderViewVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		OrderViewVO orderView = new OrderViewVO();
		orderView.setOrder_id(rs.getInt("order_id"));
		orderView.setOrder_reserve_date(rs.getTimestamp("order_reserve_date"));
		orderView.setPrice(rs.getInt("price"));
		orderView.setStoreName(rs.getString("store_name"));
		return orderView;
	}
}
