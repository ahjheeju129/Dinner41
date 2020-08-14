package kr.co.dinner41.exception.store;

public class StoreCategoryDeleteFailedException extends StoreCategoryException {
	private static final long serialVersionUID =1L;
	public static final String MESSAGE = "���� ī�װ� ������ �����Ͽ����ϴ�.";
	
	public  StoreCategoryDeleteFailedException() {
		this(MESSAGE);
	}
	
	public  StoreCategoryDeleteFailedException(String message) {
		super(message);
	}
	
}
