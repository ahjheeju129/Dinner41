package kr.co.dinner41.exception.store;

public class StoreCategorySelectFailedException extends StoreCategoryException {
	private static final long serialVersionUID =1L;
	public static final String MESSAGE = "���� ī�װ� ã�⿡ �����Ͽ����ϴ�.";
	
	public StoreCategorySelectFailedException() {
		this(MESSAGE);
	}
	public StoreCategorySelectFailedException(String message) {
		super(message);
	}
}
