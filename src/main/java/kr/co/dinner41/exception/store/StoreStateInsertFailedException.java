package kr.co.dinner41.exception.store;

public class StoreStateInsertFailedException extends StoreStateException {
	private static final long serialVersionUID = 1L;
	private static final String MESSAGE="������� ��Ͽ� �����Ͽ����ϴ�";
	
	public StoreStateInsertFailedException() {
		this(MESSAGE);
	}
	
	public StoreStateInsertFailedException(String message) {
		super(message);
	}
}
