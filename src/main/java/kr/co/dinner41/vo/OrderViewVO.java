package kr.co.dinner41.vo;

import java.io.Serializable;
import java.sql.Timestamp;

public class OrderViewVO implements Serializable {

	private static final long serialVersionUID = 1L;

	private int order_id;
	private Timestamp order_reserve_date;
	private int price;
	private String storeName;
	
	public OrderViewVO() {}
	public OrderViewVO(int order_id, Timestamp order_reserve_date, int price, String storeName) {
		this.order_id = order_id;
		this.order_reserve_date = order_reserve_date;
		this.price = price;
		this.storeName = storeName;
	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public Timestamp getOrder_reserve_date() {
		return order_reserve_date;
	}

	public void setOrder_reserve_date(Timestamp order_reserve_date) {
		this.order_reserve_date = order_reserve_date;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
}
