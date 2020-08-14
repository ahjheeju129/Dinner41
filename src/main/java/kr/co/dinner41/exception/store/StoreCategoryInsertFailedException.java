package kr.co.dinner41.exception.store;

public class StoreCategoryInsertFailedException extends StoreCategoryException {
	private static final long serialVersionUID =1L;
	public static final String MESSAGE = "���� ī�װ� ��Ͽ� �����Ͽ����ϴ�.";
	
	public StoreCategoryInsertFailedException() {
		this(MESSAGE);
	}
	public StoreCategoryInsertFailedException(String message) {
		super(message);
	}
}
