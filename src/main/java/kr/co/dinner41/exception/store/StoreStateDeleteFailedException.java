package kr.co.dinner41.exception.store;

public class StoreStateDeleteFailedException extends StoreStateException {
	private static final long serialVersionUID =1L;
	public static final String MESSAGE = "���� ���� ������ �����Ͽ����ϴ�.";
	
	public StoreStateDeleteFailedException() {
		this(MESSAGE);
	}
	
	public StoreStateDeleteFailedException(String message) {
		super(message);
	}
}
