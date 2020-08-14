package kr.co.dinner41.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import kr.co.dinner41.exception.menu2order.Menu2OrderException;
import kr.co.dinner41.vo.Menu2OrderVO;

@Repository("menu2orderDao")
public class Menu2OrderDaoImpl implements Menu2OrderDao {

	@Autowired
	private JdbcTemplate jTemp;

	@Override
	public void insert(Menu2OrderVO menu2order) throws Menu2OrderException {
		String sql = "INSERT INTO menu_to_orders VALUES(?,?,?,?)";
		jTemp.update(sql, 
				menu2order.getOrder().getId(),
				menu2order.getStore().getId(),
				menu2order.getMenu().getId(),
				menu2order.getAmount());
	}

	@Override
	public void delete(Menu2OrderVO menu2order) throws Menu2OrderException {
		// ���� ����
	}

	@Override
	public List<Menu2OrderVO> selectAll() throws Menu2OrderException {
		return null;
	}
}
