package kr.co.dinner41.exception.store;

public class StoreStateSelectFailedException extends StoreStateException {
	private static final long serialVersionUID = 1L;
	private static final String MESSAGE="������� ã�⿡ �����Ͽ����ϴ�";
	
	public StoreStateSelectFailedException() {
		this(MESSAGE);
	}
	
	public StoreStateSelectFailedException(String message) {
		super(message);
	}
}
