package kr.co.dinner41.exception.store;

public class StoreDeleteFailedException extends StoreException {
	private static final long serialVersionUID = 1L;
	private static final String MESSAGE = "��������� �����Ͽ����ϴ�.";
	
	public StoreDeleteFailedException() {
		this(MESSAGE);
	}
	
	public StoreDeleteFailedException(String message) {
		super(message);
	}
}
