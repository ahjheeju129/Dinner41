package kr.co.dinner41.exception.store;

public class StoreUpdateFailedException extends StoreException {
	private static final long serialVersionUID = 1L;
	private static final String MESSAGE = "��������� �����Ͽ����ϴ�.";
	
	public StoreUpdateFailedException() {
		this(MESSAGE);
	}
	
	public StoreUpdateFailedException(String message) {
		super(message);
	}
}
