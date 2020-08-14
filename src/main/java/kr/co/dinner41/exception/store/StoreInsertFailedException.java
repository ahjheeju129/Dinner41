package kr.co.dinner41.exception.store;

public class StoreInsertFailedException extends StoreException {
	private static final long serialVersionUID = 1L;
	private static final String MESSAGE = "�����Ͽ� �����Ͽ����ϴ�.";
	
	public StoreInsertFailedException() {
		this(MESSAGE);
	}
	
	public StoreInsertFailedException(String message) {
		super(message);
	}
}
